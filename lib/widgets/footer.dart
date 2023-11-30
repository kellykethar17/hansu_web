import 'package:flutter/material.dart';
import 'package:hansu_web/color/web_colors.dart';
import 'package:hansu_web/widgets/screen.dart';

import '../web_logo.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isWide = screenWidth > Breakpoints.tablet;
    return Center(
      child: SizedBox(
        width: Breakpoints.desktop.toDouble(),
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
                'Copyright © 2023',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.subtitle2!.copyWith(
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
  const FooterLinks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isWide = screenWidth > Breakpoints.tablet;
    if (isWide) {
      return const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FooterLink(text: 'Contact'),
          Spacer(),
          FooterLink(text: 'Twitter'),
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
          FooterLink(text: 'Twitter'),
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
  const FooterLink({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context)
          .textTheme
          .subtitle2!
          .copyWith(color: Colors.white, fontWeight: FontWeight.normal),
    );
  }
}