import 'package:flutter/material.dart';

class SectionSeparator extends StatelessWidget {
  const SectionSeparator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: const Column(
        children: [
          SizedBox(height: 17),
          VerticalSeparator(),
          SizedBox(height: 17),
        ],
      ),
    );
  }
}

class VerticalSeparator extends StatelessWidget {
  const VerticalSeparator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 2,
      // color: const Color(0xFF252627),
      color: Colors.blue,
    );
  }
}
