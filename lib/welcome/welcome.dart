// import 'package:flutter/material.dart';
// import 'package:hansu_web/welcome/welcome_header.dart';
//
// import '../assets/ref/hub.dart';
// import '../widgets/screen.dart';
//
// class Welcome extends StatelessWidget {
//   const Welcome({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;
//     return Container(
//       color: Colors.blue,
//       child: Center(
//         child: Stack(
//           children: [
//             const Column(
//               children: [
//                 WelcomeHeader(),
//               ],
//             ),
//             if (screenWidth > Breakpoints.pc) ...[
//               Positioned(
//                 top: 250,
//                 left: 0,
//                 child: Image.asset(Hub.hansu),
//               ),
//               Positioned(
//                 child: Image.asset(Hub.hansu),
//               ),
//               Positioned(
//                 top: 800,
//                 right: 100,
//                 child: Image.asset(Hub.hansumi),
//               ),
//             ],
//           ],
//         ),
//       ),
//     );
//
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hansu_web/welcome/welcome_header.dart';

import '../assets/ref/hub.dart';
import '../widgets/screen.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  int _currentImageIndex = 0;

  final List<String> _imageAssets = [
    Hub.hansu,
    Hub.hansumi,
    // Add more image assets here
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final screenWidth = constraints.maxWidth;
        return Container(
          color: Colors.blue,
          child: Center(
            child: SizedBox(width: (screenWidth > Breakpoints.pc ? Breakpoints.pc : screenWidth).toDouble(),
              child: Column(
                children: [
                  const WelcomeHeader(),
                  const SizedBox(height: 32),
                  _buildImageCarousel(),
                  const SizedBox(height: 32),
                  Wrap( // Use Wrap for better responsiveness
                    spacing: 20,
                    runSpacing: 20,
                    alignment: WrapAlignment.center,
                    children: [
                      _buildTextBox('Developer Ecosystem\nResearch and Training'),
                      _buildTextBox('Creative\nInnovative Ideas'),
                      _buildTextBox('Mobile Application\nDevelopment'),
                      _buildTextBox('Consultancy\nServices'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildImageCarousel() {
    return CarouselSlider(
      items: _imageAssets.map((asset) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: DecorationImage(
                  image: AssetImage(asset),
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        );
      }).toList(),
      options: CarouselOptions(
        height: 400,
        autoPlay: true,
        enlargeCenterPage: true,
        aspectRatio: 16 / 9,
        viewportFraction: 0.8,
        onPageChanged: (index, reason) {
          setState(() {
            _currentImageIndex = index;
          });
        },
      ),
    );
  }
  Widget _buildTextBox(String heading) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.deepOrange.withOpacity(0.1), // Softer background colorborder: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Text(
        heading,
        textAlign: TextAlign.center, // Center text within box
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}

