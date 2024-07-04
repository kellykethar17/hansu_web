import 'package:flutter/material.dart';

import '../widgets/screen.dart';


// class WelcomeHeader extends StatelessWidget {
//   const WelcomeHeader({super.key});
//
//   double topPadding(double maxWidth) {
//     if (maxWidth > Breakpoints.tablet) {
//       return 122;
//     } else if (maxWidth > Breakpoints.phone) {
//       return 71;
//     } else {
//       return 53;
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;
//     return SizedBox(
//       width: 880,
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 20),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             SizedBox(height: topPadding(screenWidth),
//               width: 100,
//
//             ),
//             Image.asset(
//               Hub.hansu,
//             ),
//             const SizedBox(height: 32),
//             RichText(
//               text: const TextSpan(
//                 text: 'Hansu Mobile and Intelligent Innovations',
//                 style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50),
//
//                 // PcTheme,
//                 //
//                 // style: PcTheme().subheadAllCaps.copyWith(color: Colors.black),
//                 // // children: const <TextSpan>[
//                 //   TextSpan(
//                 //       text: 'all for free!',
//                 //       style: TextStyle(
//                 //           fontWeight: FontWeight.bold, color: Colors.white)),
//                 // ],
//               ),
//               textAlign: TextAlign.center,
//             ),
//             const SizedBox(height: 20,),
//              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               _buildTextBox('Developer Ecosystem \nResearch and Training'),
//               _buildTextBox('Creative \n Innovative Ideas'),
//               _buildTextBox('Mobile Application \n Development'),
//               _buildTextBox('Consultancy \n Services')
//             ],)
//           ],
//         ),
//       ),
//     );
//   }
//
//
//
// Widget _buildTextBox(String heading) {
//   return Container(
//     padding: const EdgeInsets.all(16.0),
//     decoration: BoxDecoration(
//       color: Colors.deepOrange,
//       border: Border.all(color: Colors.grey),
//       borderRadius: BorderRadius.circular(8.0),
//     ),
//     child: Text(
//       heading,
//       style: const TextStyle(fontWeight: FontWeight.bold),
//     ),
//   );
// }
// }



class WelcomeHeader extends StatelessWidget {
  const WelcomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final screenWidth = constraints.maxWidth;
        return Container(
          width: (screenWidth > Breakpoints.pc ? Breakpoints.pc : screenWidth).toDouble(),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 32), // Consistent padding
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Hansu Mobile and Intelligent Innovations',
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  fontWeight: FontWeight.bold,fontSize: 50,
                  color: Colors.black, // Use theme color if available
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32),
              // Wrap( // Use Wrap for better responsiveness
              //   spacing: 20,
              //   runSpacing: 20,
              //   alignment: WrapAlignment.center,
              //   children: [
              //     _buildTextBox('Developer Ecosystem\nResearch and Training'),
              //     _buildTextBox('Creative\nInnovative Ideas'),
              //     _buildTextBox('Mobile Application\nDevelopment'),
              //     _buildTextBox('Consultancy\nServices'),
              //   ],
              // ),
            ],
          ),
        );
      },
    );
  }

  // Widget _buildTextBox(String heading) {
  //   return Container(
  //     padding: const EdgeInsets.all(16.0),
  //     decoration: BoxDecoration(
  //       color: Colors.deepOrange.withOpacity(0.1), // Softer background colorborder: Border.all(color: Colors.grey),
  //       borderRadius: BorderRadius.circular(8.0),
  //     ),
  //     child: Text(
  //       heading,
  //       textAlign: TextAlign.center, // Center text within box
  //       style: const TextStyle(fontWeight: FontWeight.bold),
  //     ),
  //   );
  // }
}