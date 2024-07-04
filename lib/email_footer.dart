import 'package:flutter/material.dart';
import 'package:hansu_web/color/web_colors.dart';
import 'package:hansu_web/widgets/screen.dart';

import 'email/email_field.dart';
import 'email/email_signup_button.dart';

class EmailFooterSection extends StatelessWidget {
  const EmailFooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      color: WebColors.primary,
      child: Center(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: horizontalPadding(screenWidth)),
          child: Column(
            children: [
              const SizedBox(height: 80),
              Text(
                'Get All The News Updates, right in your inbox.',
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(color: Colors.white),
              ),
              const SizedBox(height: 24),
              const EmailFooterSectionBody(),
              const SizedBox(height: 80),
            ],
          ),
        ),
      ),
    );
  }
}

class EmailFooterSectionBody extends StatelessWidget {
  const EmailFooterSectionBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 337,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          FooterEmailTextField(),
          SizedBox(height: 16),
          FooterEmailSignupButton(),
          SizedBox(height: 16),
          EmailFormFooterText(),
        ],
      ),
    );
  }
}

class EmailFormFooterText extends StatelessWidget {
  const EmailFormFooterText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'always get ',
        style: Theme.of(context)
            .textTheme
            .bodyLarge!
            .copyWith(color: WebColors.primary2),
        children: <TextSpan>[
          TextSpan(
            text: 'updated',
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: Colors.white, decoration: TextDecoration.underline),
          ),
          TextSpan(
            text: ' on  what\'s happening.',
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: WebColors.primary2),
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}

class FooterEmailTextField extends StatelessWidget {
  const FooterEmailTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 48,
      child: EmailField(
        fillColor: WebColors.primary6,
        hintColor: WebColors.primary2,
      ),
    );
  }
}

class FooterEmailSignupButton extends StatelessWidget {
  const FooterEmailSignupButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 48,
      child: EmailSignupButton(
        primary: Colors.white,
        onPrimary: WebColors.primary7,
      ),
    );
  }
}
