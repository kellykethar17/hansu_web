// import 'package:flutter/material.dart';
// import 'package:hansu_web/widgets/screen.dart';
//
// // class FarmerCompanion extends StatelessWidget {
// //   const FarmerCompanion({super.key});
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     final screenWidth = MediaQuery.of(context).size.width;
// //     return Container(
// //       color: Colors.white,
// //       child: Center(
// //         child: SizedBox(
// //           width: Breakpoints.pc.toDouble(),
// //           child: Padding(
// //             padding: EdgeInsets.symmetric(
// //                 horizontal: horizontalPadding(screenWidth)),
// //             child: Column(
// //               children: [
// //                 Row(
// //                   mainAxisAlignment: MainAxisAlignment.center,
// //                   children: [
// //                     Text(
// //                       'Farmers Companion',
// //                       style: Theme.of(context)
// //                           .textTheme
// //                           .headlineMedium!
// //                           .copyWith(color: Colors.black),
// //                     ),
// //                     if (screenWidth > Breakpoints.twoColLayoutMinWidth) ...[
// //                       const Spacer(),
// //                       // const ExploreTutorialsButton(),
// //                     ],
// //                   ],
// //                 ),
// //                 SizedBox(
// //                   height:
// //                       screenWidth > Breakpoints.twoColLayoutMinWidth ? 52 : 12,
// //                 ),
// //               ],
// //             ),
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
// //
// // class FarmerCompanionContent extends StatelessWidget {
// //   const FarmerCompanionContent({super.key});
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     final screenWidth = MediaQuery.of(context).size.width;
// //     final crossAxisCount =
// //         screenWidth >= Breakpoints.twoColLayoutMinWidth ? 2 : 1;
// //     return Container(
// //       color: Colors.white,
// //       padding: const EdgeInsets.all(16.0), // Add padding
// //       child: const SingleChildScrollView(
// //         child: Text(
// //           'Farmers Companion (formerly Fapp), is a smart solution to revolutionize Agriculture, stop hunger and improve the economic wellbeing of African farmers.\n\n'
// //           'Our solution is smart and intelligent to provides timely, context-specific information that enables smallholder farmers and those who support them to identify, suggest treatment, track and share information about incidences of pests and diseases on African farms and gardens.\n\n'
// //           'It uses machine learning on Android to help farmers fight pests and disease affecting their crops. It is designed to work both on and offline.\n\n'
// //           'Why Farmers Companion?\n\n'
// //           'Pests and diseases on African farms not only cause a threat to food security but also to the economic prosperity of farmers. '
// //           'According to the report commissioned by the Department for International Development(DFID) in September, 2017, the arrival of fall armyworm (FAW) in Africa had the potential to cause maize yield losses in a range from 8.3 to 20.6 million tonnes per annum, in the absence of any control methods, in just 12 maize-producing countries. This represents a range of 21%-53% of the annual averaged production of maize over a three-year period in these countries. '
// //           'The value of these losses was estimated between usd2,481m - usd6,187m. The same worm can affect 80 plant species.',
// //           style: TextStyle(
// //             color: Colors.black,
// //             fontSize: 16.0,
// //           ),
// //           textAlign: TextAlign.justify,
// //         ),
// //       ),
// //     );
// //   }
// // }
// //
// // class FarmerCompanionFooter extends StatelessWidget {
// //   const FarmerCompanionFooter({super.key});
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     final screenWidth = MediaQuery.of(context).size.width;
// //     if (screenWidth <= Breakpoints.twoColLayoutMinWidth) {
// //       return const Column(
// //         children: [
// //           SizedBox(height: 40),
// //           // ExploreTutorialsButton(),
// //         ],
// //       );
// //     } else {
// //       // TODO: return something more lightweight
// //       return const SizedBox();
// //     }
// //   }
// // }
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:hansu_web/color/web_colors.dart';
// import 'package:hansu_web/video.dart';
// import 'package:hansu_web/web_header/web_header.dart';
// import 'package:hansu_web/widgets/footer.dart';
// import 'package:youtube_player_flutter/youtube_player_flutter.dart';
//
// // Assuming Breakpoints class is defined elsewhere
// class Breakpoints {
//   static const double phone = 600;
//   static const double tablet = 900;
//   static const double desktop = 1200;
// }
//
// class FarmersCompanion extends StatefulWidget {
//   const FarmersCompanion({super.key});
//   @override
//   State<FarmersCompanion> createState() => _FarmersCompanionState();
// }
//
// class _FarmersCompanionState extends State<FarmersCompanion> {
//   late YoutubePlayerController _controller;
//
//   @override
//   void initState() {
//     super.initState();
//     WidgetsBinding.instance.addPostFrameCallback((_){
//       setState(() {
//         _controller =const YoutubePlayer(
//           initialVideoId: 'https://www.youtube.com/watch?v=bSKQGTl7zr4',
//           flags: YoutubePlayerFlags(
//             autoPlay: false,
//           ),
//         ) as YoutubePlayerController;
//       });
//     });
//   }
//
// }
//
// class FarmerCompanionSection extends StatelessWidget {
//   const FarmerCompanionSection({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.white,
//       padding: const EdgeInsets.all(16.0),
//       child: LayoutBuilder(
//         builder: (context, constraints) {
//           final screenWidth = constraints.maxWidth;
//           return Column(
//             children: [_buildHeader(screenWidth, context),
//               const SizedBox(height: 32),
//               _buildContent(screenWidth),
//             ],
//           );
//         },
//       ),
//     );
//   }
//
//   Widget _buildHeader(double screenWidth, BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Text(
//           'Farmers Companion',
//           style: Theme.of(context).textTheme.headlineMedium!.copyWith(
//             color: Colors.black,
//           ),
//         ),
//         if (screenWidth > Breakpoints.tablet) ...[
//           const Spacer(),
//           // Implement ExploreButton here if needed
//           // ElevatedButton(
//           //   onPressed: () {
//           //     // Handle button press
//           //   },
//           //   child: const Text('Explore More'),
//           // ),
//         ],
//       ],
//     );
//   }
//
//   Widget _buildContent(double screenWidth) {
//     return SizedBox(
//       width: screenWidth > Breakpoints.desktop ? Breakpoints.desktop : screenWidth,
//       child: const Text(
//         'Farmers Companion (formerly Fapp), is a smart solution to revolutionize Agriculture, stop hunger and improve the economic wellbeing of African farmers.\n\n'
//             'Our solution is smart and intelligent to provides timely, context-specific information that enables smallholder farmers and those who support them to identify, suggest treatment, track and share information about incidences of pests and diseases on African farms and gardens.\n\n'
//             'It uses machine learning on Android to help farmers fight pests and disease affecting their crops. It is designed to work both on and offline.\n\n'
//             'Why Farmers Companion?\n\n'
//             'Pests and diseases on African farms not only cause a threat to food security but also to the economic prosperity of farmers. '
//             'According to the report commissioned by the Department for International Development(DFID) in September, 2017, the arrival of fall armyworm (FAW) in Africa had the potential to cause maize yield losses in a range from 8.3 to 20.6 million tonnes per annum, in the absence of any control methods, in just 12 maize-producing countries. This represents a range of 21%-53% of the annual averaged production of maize over a three-year period in these countries. '
//             'The value of these losses was estimated between usd2,481m - usd6,187m. The same worm can affect 80 plant species.',
//         style: TextStyle(
//           color: Colors.black,
//           fontSize: 16.0,
//         ),
//         textAlign: TextAlign.justify,
//       ),
//     );
//   }
// }
//
// class VideoPlayerScreen extends StatelessWidget {
//   final String videoUrl;
//
//   const VideoPlayerScreen({super.key, required this.videoUrl});
//
//   @override
//   Widget build(BuildContext context) {
//     String videoId = YoutubePlayer.convertUrlToId(videoUrl)!;
//     YoutubePlayerController _controller = YoutubePlayerController(
//       initialVideoId: videoId,
//       flags: const YoutubePlayerFlags(
//         autoPlay: false,
//         mute: false,
//       ),
//     );
//
//     return  Padding(
//       padding: const EdgeInsets.all(16.0),
//       child: YoutubePlayer(
//         controller: _controller,
//         showVideoProgressIndicator: true,
//         progressIndicatorColor: Colors.blueAccent,
//       ),
//     );
//   }
// }
//
//

import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../video.dart';
import '../widgets/screen.dart';

class FarmersCompanionScreen extends StatefulWidget {
  const FarmersCompanionScreen({super.key});
  @override
  State<FarmersCompanionScreen> createState() => _FarmersCompanionScreenState();
}

class _FarmersCompanionScreenState extends State<FarmersCompanionScreen> {
  late YoutubePlayerController _youtubeController;

  @override
  void initState() {
    super.initState();
    _youtubeController = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(
          'https://www.youtube.com/watch?v=bSKQGTl7zr4')!,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );
  }

  @override
  void dispose() {
    _youtubeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Farmers Companion'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FarmerCompanionSection(
                youtubeController: _youtubeController,
              ),
              const SizedBox(height: 32),
              VideoPlayerScreen(controller: _youtubeController),
            ],
          ),
        ),
      ),
    );
  }
}

class FarmerCompanionSection extends StatelessWidget {
  final YoutubePlayerController youtubeController;

  const FarmerCompanionSection({super.key, required this.youtubeController});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final screenWidth = constraints.maxWidth;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Farmers Companion',
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Farmers Companion (formerly Fapp), is a smart solution to revolutionize Agriculture, stop hunger and improve the economic wellbeing of African farmers.\n\n'
              'Our solution is smart and intelligent to provides timely, context-specific information that enables smallholder farmers and those who support them to identify, suggest treatment, track and share information about incidences of pests and diseases on African farms and gardens.\n\n'
              'It uses machine learning on Android to help farmers fight pests and disease affecting their crops. It is designed to work both on and offline.\n\n'
              'Why Farmers Companion?\n\n'
              'Pests and diseases on African farms not only cause a threat to food security but also to the economic prosperity of farmers. '
              'According to the report commissioned by the Department for International Development(DFID) in September, 2017, the arrival of fall armyworm (FAW) in Africa had the potential to cause maize yield losses in a range from 8.3 to 20.6 million tonnes per annum, in the absence of any control methods, in just 12 maize-producing countries. This represents a range of 21%-53% of the annual averaged production of maize over a three-year period in these countries. '
              'The value of these losses was estimated between usd2,481m - usd6,187m. The same worm can affect 80 plant species.',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
              ),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 16),
            if (screenWidth > Breakpoints.tablet)
              ElevatedButton(
                onPressed: () {
                  // Handle button press
                },
                child: const Text('Explore More'),
              ),
          ],
        );
      },
    );
  }
}

class VideoPlayerScreen extends StatelessWidget {
  final YoutubePlayerController controller;

  const VideoPlayerScreen({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return YoutubePlayer(
      controller: controller,
      showVideoProgressIndicator: true,
      progressIndicatorColor: Colors.blueAccent,
    );
  }
}
