import 'package:flutter/material.dart';
import 'package:hansu_web/widgets/screen.dart';


class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(16.0),
      child: LayoutBuilder( // Use LayoutBuilder for responsive layout
        builder: (context, constraints) {
          final screenWidth = constraints.maxWidth;
          return Column(
            children: [
              _buildContactHeader(screenWidth, context),
              const SizedBox(height: 32),
              _buildContactInfo(screenWidth),
              if (screenWidth <= Breakpoints.tablet) ...[
                const SizedBox(height: 32),
                _buildContactFooter(),
              ],
            ],
          );
        },
      ),
    );
  }

  Widget _buildContactHeader(double screenWidth, BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Contact Us',
          style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: Colors.black),
        ),
        if (screenWidth > Breakpoints.tablet) ...[
          const Spacer(),
        ],
      ],
    );
  }

  Widget _buildContactInfo(double screenWidth) {
    return SizedBox(
      width: (screenWidth > Breakpoints.pc ? Breakpoints.pc : screenWidth).toDouble(),
      child: const Text(
        'We are located at plot 40 Mission Road, Mbale, ''Uganda on Mountain Inn building opposite Sukali. '
            'You can email us at info@hansumi.com.',
        style: TextStyle(
          color: Colors.black,
          fontSize: 16.0,
        ),
        textAlign: TextAlign.justify,
      ),
    );
  }

  Widget _buildContactFooter() {
    return Container(
      padding: const EdgeInsets.all(16.0),
      color: Colors.grey[200], // Use a lighter background color
      child: const Column(
        children: [
          Text(
            'Mbale',
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
          Text('+256-773-101481'),
          Text('Monday - Friday: 8am - 5pm'),
          Text('info@hansumi.com'),
        ],
      ),
    );
  }
}
