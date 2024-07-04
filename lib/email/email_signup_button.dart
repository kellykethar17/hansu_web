import 'package:flutter/material.dart';

class EmailSignupButton extends StatelessWidget {
  const EmailSignupButton(
      {super.key, required this.primary, required this.onPrimary});
  final Color primary;
  final Color onPrimary;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          foregroundColor: primary,
          backgroundColor: onPrimary,
          splashFactory: NoSplash.splashFactory,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
      child: Text(
        'Sign Up',
        textAlign: TextAlign.center,
        style: Theme.of(context)
            .textTheme
            .bodyLarge
            ?.copyWith(fontWeight: FontWeight.w500, color: primary),
      ),
      onPressed: () {},
    );
  }
}
