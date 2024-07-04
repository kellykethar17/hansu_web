// import 'package:flutter/material.dart';
// import 'package:hansu_web/widgets/screen.dart';
// import 'package:video_player/video_player.dart';
//
// import 'farmerscompanion/farmercompanion.dart';
//
// class Video extends StatefulWidget {
//   const Video({Key? key}) : super(key: key);
//   @override
//   State<Video> createState() => _VideoState();
// }
//
// class _VideoState extends State<Video> {
//   late VideoPlayerController _controller;
//   late Duration videoLength;
//   late Duration videoPosition;
//   double volume = 0.3;
//   @override
//   void initState() {
//     super.initState();
//     _controller = VideoPlayerController.networkUrl(
//       'https://www.youtube.com/watch?v=bSKQGTl7zr4'
//          as Uri)
//       ..addListener(() => setState(() {
//         videoPosition = _controller.value.position;
//       }))
//       ..initialize().then((_) {
//         // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
//         setState(() {
//           videoLength = _controller.value.duration;
//         });
//       });
//   }
//
//
//   @override
//   void dispose() {
//     super.dispose();
//     _controller.dispose();
//   }
//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery
//         .of(context)
//         .size
//         .width;
//     return Container(
//       child: Column(
//         children: [
//           if (_controller.value.isInitialized) ...[
//             Container(
//               padding: EdgeInsets.symmetric(
//                   horizontal: sliverHorizontalPadding(screenWidth)),
//               height: 400,
//               // aspectRatio: _controller.value.aspectRatio,
//               child: VideoPlayer(_controller),
//             ),
//             Container(
//               padding: EdgeInsets.symmetric(
//                   horizontal: sliverHorizontalPadding(screenWidth)),
//               child: VideoProgressIndicator(
//                 _controller,
//                 allowScrubbing: true,
//                 // padding: EdgeInsets.all(10),
//               ),
//             ),
//             Row(
//               children: <Widget>[
//                 IconButton(
//                   icon: Icon(
//                     _controller.value.isPlaying
//                         ? Icons.pause
//                         : Icons.play_arrow,
//
//                   ),
//                   onPressed: () =>
//                       setState(
//                             () {
//                           _controller.value.isPlaying
//                               ? _controller.pause()
//                               : _controller.play();
//                         },
//                       ),
//                   color: Colors.white,
//                 ),
//                 Text(
//                     '${convertToMinutesSeconds(
//                         videoPosition)} / ${convertToMinutesSeconds(
//                         videoLength)}'),
//                 const SizedBox(width: 10),
//                 Icon(animatedVolumeIcon(volume)),
//                 Slider(
//                     value: volume,
//                     min: 0,
//                     max: 1,
//                     onChanged: (changedVolume) {
//                       setState(() {
//                         volume = changedVolume;
//                         _controller.setVolume(changedVolume);
//                       });
//                     }),
//                 const Spacer(),
//                 IconButton(
//                     icon: Icon(Icons.loop,
//                         color: _controller.value.isLooping
//                             ? Colors.green
//                             : Colors.white),
//                     onPressed: () {
//                       _controller.setLooping(!_controller.value.isLooping);
//                     })
//               ],
//             ),
//
//           ]
//         ],
//       ),
//     );
//
//   }
// }

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerScreen extends StatefulWidget {
  const VideoPlayerScreen({super.key, required this.videoUrl});
  final String videoUrl;

  @override
  State<VideoPlayerScreen> createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;
  double _volume = 0.5; // Initial volume

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(widget.videoUrl as Uri);
    _initializeVideoPlayerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  String _formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    return "$twoDigitMinutes:$twoDigitSeconds";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Video Player'),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(10.0),
          color: Colors.amber[600],
          width: 50.0,
          height: 50,
          child: FutureBuilder(
            future: _initializeVideoPlayerFuture,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: <Widget>[
                      VideoPlayer(_controller),
                      VideoProgressIndicator(_controller, allowScrubbing: true),
                      _buildControls(),
                    ],
                  ),
                );
              } else {
                return const CircularProgressIndicator();
              }
            },
          ),
        ),
      ),
    );
  }

  Widget _buildControls() {
    return Container(
      color: Colors.black26,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              setState(() {
                _controller.value.isPlaying
                    ? _controller.pause()
                    : _controller.play();
              });
            },
            icon: Icon(
              _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
              color: Colors.white,
            ),
          ),
          Text(
            '${_formatDuration(_controller.value.position)} / ${_formatDuration(_controller.value.duration)}',
            style: const TextStyle(color: Colors.white),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                _volume = _volume == 0.0 ? 0.5 : 0.0;
                _controller.setVolume(_volume);
              });
            },
            icon: Icon(
              _volume == 0.0 ? Icons.volume_off : Icons.volume_up,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
