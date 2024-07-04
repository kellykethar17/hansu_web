import 'package:flutter/material.dart';
import 'package:hansu_web/widgets/screen.dart';

class FarmerCompanion extends StatelessWidget {
  const FarmerCompanion({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white,
      child: Center(
        child: SizedBox(
          width: Breakpoints.pc.toDouble(),
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: horizontalPadding(screenWidth)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Farmers Companion',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .copyWith(color: Colors.black),
                    ),
                    if (screenWidth > Breakpoints.twoColLayoutMinWidth) ...[
                      const Spacer(),
                      // const ExploreTutorialsButton(),
                    ],
                  ],
                ),
                SizedBox(
                  height:
                      screenWidth > Breakpoints.twoColLayoutMinWidth ? 52 : 12,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FarmerCompanionContent extends StatelessWidget {
  const FarmerCompanionContent({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final crossAxisCount =
        screenWidth >= Breakpoints.twoColLayoutMinWidth ? 2 : 1;
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(16.0), // Add padding
      child: const SingleChildScrollView(
        child: Text(
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
      ),
    );
  }
}

class FarmerCompanionFooter extends StatelessWidget {
  const FarmerCompanionFooter({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth <= Breakpoints.twoColLayoutMinWidth) {
      return const Column(
        children: [
          SizedBox(height: 40),
          // ExploreTutorialsButton(),
        ],
      );
    } else {
      // TODO: return something more lightweight
      return const SizedBox();
    }
  }
}

