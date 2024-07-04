import 'package:flutter/material.dart';
import 'package:hansu_web/widgets/screen.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {return Container(
    color: Colors.white,
    padding: const EdgeInsets.all(16.0),
    child: LayoutBuilder(
      builder: (context, constraints) {
        final screenWidth = constraints.maxWidth;
        return Column(
          children: [
            _buildAboutHeader(screenWidth, context),
            const SizedBox(height: 32),
            _buildAboutContent(screenWidth),
            const SizedBox(height: 32),
            _buildAboutFooter(screenWidth),
          ],
        );
      },
    ),);
  }

  Widget _buildAboutHeader(double screenWidth, BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'About Us', // Changed to "About Us"
          style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: Colors.black),
        ),
        if (screenWidth > Breakpoints.tablet) ...[
          const Spacer(),
          // Implement ExploreTutorialsButton here
          ElevatedButton(
            onPressed: () {
              // Handle button press - navigate to tutorials page
            },
            child: const Text('Explore Our Work'), // Changed button text
          ),
        ],
      ],
    );
  }

  Widget _buildAboutContent(double screenWidth) {
    return SizedBox(
      width: (screenWidth > Breakpoints.pc ? Breakpoints.pc : screenWidth).toDouble(),
      child: const Column( // Use Column for better content structure
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hansu Mobile Innovations is a software development company located at Mission, Mbale, Uganda.',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16.0,
            ),
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 16),
          Text(
            'It is one of the leading companies using deep computer science and technical insights to solve some of society\'s pressing challenges at scale using mobile technologies and artificial intelligence.',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16.0,
            ),
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 24),
          Text(
            'Our Mission',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16),
          Text(
            'Is to develop secure, scalable, and delightful enterprise solutions on both web and mobile around the globe, to support and believe in research, entrepreneurship, and innovations which enable us to implement high-tech solutions with an AI-first approach.',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16.0,
            ),
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }

  Widget _buildAboutFooter(double screenWidth) {
    if (screenWidth <= Breakpoints.tablet) {
      return Container(
        padding: const EdgeInsets.all(16.0),
        color: Colors.grey[200],
        child: const Column(
          children: [
            Text(
              'Learn more about our impact and how you can get involved.',
              style: TextStyle(fontSize: 16.0),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16),
            // Add a button or link to a relevant page
            // ElevatedButton(
            //   onPressed: () {
            //     // Handle button press
            //   },
            //   child: const Text('Get Involved'),
            // ),
          ],
        ),
      );
    } else {
      return const SizedBox(); // No footer for larger screens
    }
  }
}