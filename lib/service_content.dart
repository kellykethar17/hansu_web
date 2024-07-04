
import 'package:flutter/material.dart';
import 'package:hansu_web/widgets/screen.dart';

// class ServiceContent extends StatelessWidget {
//   const ServiceContent({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;
//     return Container(
//       color: Colors.white,
//       child: Center(
//         child: SizedBox(
//           width: Breakpoints.pc.toDouble(),
//           child: Padding(
//             padding: EdgeInsets.symmetric(
//                 horizontal: horizontalPadding(screenWidth)),
//             child: Column(
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text(
//                       'Services',
//                       style: Theme.of(context)
//                           .textTheme
//                           .headlineMedium!
//                           .copyWith(color: Colors.black),
//                     ),
//                     if (screenWidth > Breakpoints.twoColLayoutMinWidth) ...[
//                       const Spacer(),
//                       // const ExploreTutorialsButton(),
//                     ],
//                   ],
//                 ),
//                 SizedBox(
//                   height:
//                       screenWidth > Breakpoints.twoColLayoutMinWidth ? 52 : 12,
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class ServiceContext extends StatelessWidget {
//   const ServiceContext({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;
//     final crossAxisCount =
//         screenWidth >= Breakpoints.twoColLayoutMinWidth ? 2 : 1;
//     return Container(
//       color: Colors.white,
//       padding: const EdgeInsets.all(16.0), // Add padding
//       child: const SingleChildScrollView(
//         child: Text(
//           'We offer customly made mobile phone applications to help your business thrive.'
//           'We also do research in mobile computing to better improve ease of use, accessibility and security.'
//           'We support local startups so as to have more innovators in the software industry in Mbale region and beyond.'
//           'As a way of achieving its motives of social corporate responsibility, '
//           'it supports a nonprofit organization Django Girls that empowers women into the technology sector in Mbale region and GDG Mbale with space, mentors and guidance.',
//           style: TextStyle(
//             color: Colors.black,
//             fontSize: 16.0,
//           ),
//           textAlign: TextAlign.justify,
//         ),
//       ),
//     );
//   }
// }


class ServicesSection extends StatelessWidget {
  const ServicesSection({super.key});

  @override
  Widget build(BuildContext context) {return Container(
    color: Colors.white,
    padding: const EdgeInsets.all(16.0),
    child: LayoutBuilder(
      builder: (context, constraints) {
        final screenWidth = constraints.maxWidth;
        return Column(
          children: [
            _buildServicesHeader(screenWidth, context),
            const SizedBox(height: 32),
            _buildServicesContent(screenWidth),
          ],
        );
      },
    ),
  );
  }

  Widget _buildServicesHeader(double screenWidth, BuildContext context) {return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        'Our Services',
        style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: Colors.black),
      ),
      if (screenWidth > Breakpoints.tablet) ...[
        const Spacer(),
        // Implement ExploreServicesButton here
        ElevatedButton(
          onPressed: () {
            // Handle button press - navigate to a detailed services page
          },
          child: const Text('Explore All Services'),
        ),
      ],
    ],
  );
  }

  Widget _buildServicesContent(double screenWidth) {
    return SizedBox(
      width: (screenWidth > Breakpoints.pc ? Breakpoints.pc : screenWidth).toDouble(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildServiceItem(
            'Custom Mobile App Development',
            'We build tailor-made mobile applications to help your business thrive.',
          ),
          _buildServiceItem(
            'Mobile Computing Research',
            'We conduct research in mobile computing to improve ease of use, accessibility,and security.',
          ),
          _buildServiceItem(
            'Startup Support',
            'We support local startups to foster innovation in the software industry in the Mbale region and beyond.',
          ),
          _buildServiceItem(
            'Social Responsibility',
            'We support initiatives like Django Girls and GDG Mbale to empower women and promote technology in the region.',
          ),
        ],
      ),
    );
  }

  // Helper function to build individual service items
  Widget _buildServiceItem(String title, String description) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            description,
            style: const TextStyle(fontSize: 16.0),
          ),
        ],
      ),
    );
  }
}