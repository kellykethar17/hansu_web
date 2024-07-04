import 'package:flutter/material.dart';
import 'package:hansu_web/color/web_colors.dart';
import 'package:hansu_web/widgets/screen.dart';

import '../web_header/web_logo.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isWide = screenWidth > Breakpoints.tablet;
    return Center(
      child: SizedBox(
        width: Breakpoints.pc.toDouble(),
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: horizontalPadding(screenWidth)),
          child: Column(
            crossAxisAlignment:
                isWide ? CrossAxisAlignment.start : CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 80),
              const WebLogo(),
              const SizedBox(height: 16),
              Text(
                'Copyright © 2024',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    color: WebColors.neutral4, fontWeight: FontWeight.normal),
              ),
              SizedBox(height: isWide ? 88 : 44),
              Container(
                color: Colors.white.withOpacity(0.2),
                height: 1,
              ),
              const SizedBox(height: 32),
              const FooterLinks(),
              SizedBox(height: isWide ? 112 : 96),
            ],
          ),
        ),
      ),
    );
  }
}

class FooterLinks extends StatelessWidget {
  const FooterLinks({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isWide = screenWidth > Breakpoints.tablet;
    if (isWide) {
      return const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FooterLink(text: 'Contact \n +256773101481'),
          Spacer(),
          FooterLink(text: 'X'),
          SizedBox(width: 32),
          FooterLink(text: 'Facebook'),
          SizedBox(width: 32),
          FooterLink(text: 'GitHub'),
          SizedBox(width: 32),
          FooterLink(text: 'Linkedin'),
          SizedBox(width: 32),
          // FooterLink(text: 'Meta'),
        ],
      );
    } else {
      return const Column(
        children: [
          FooterLink(text: 'Contact'),
          SizedBox(height: 40),
          FooterLink(text: 'X'),
          SizedBox(height: 40),
          FooterLink(text: 'Facebook'),
          SizedBox(height: 40),
          FooterLink(text: 'GitHub'),
          SizedBox(height: 40),
          FooterLink(text: 'Linkedin'),
          SizedBox(height: 40),
          // FooterLink(text: 'Meta'),
        ],
      );
    }
  }
}

class FooterLink extends StatelessWidget {
  const FooterLink({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context)
          .textTheme
          .titleSmall!
          .copyWith(color: Colors.blueGrey, fontWeight: FontWeight.normal),
    );
  }
}
