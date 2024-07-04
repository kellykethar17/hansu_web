import 'package:flutter/material.dart';

import '../color/web_colors.dart';
import '../email/email_field.dart';
import '../email/email_signup_button.dart';
import '../widgets/screen.dart';

// class Signup extends StatelessWidget {
//   const Signup({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;
//     bool isWide = screenWidth > Breakpoints.tablet;
//     final width = isWide ? 522.0 : 337.0;
//     return SizedBox(
//       width: width,
//       child: Padding(
//         padding:
//             EdgeInsets.symmetric(horizontal: horizontalPadding(screenWidth)),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             SizedBox(height: isWide ? 88 : 56),
//             Text(
//               'The best Flutter tutorials. Right in your inbox.',
//               textAlign: TextAlign.center,
//               style: Theme.of(context)
//                   .textTheme
//                   .titleLarge!
//                   .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
//             ),
//             const SizedBox(height: 16),
//             RichText(
//               text: TextSpan(
//                 text:
//                     'Join over 20,000 developers who are taking their Flutter skills to the next level with my free ',
//                 style: Theme.of(context)
//                     .textTheme
//                     .bodyLarge!
//                     .copyWith(color: WebColors.neutral3),
//                 children: const <TextSpan>[
//                   TextSpan(
//                       text: 'Flutter email course & newsletter:',
//                       style: TextStyle(
//                         //fontWeight: FontWeight.bold,
//                         color: WebColors.neutral2,
//                         decoration: TextDecoration.underline,
//                       )),
//                 ],
//               ),
//               textAlign: TextAlign.center,
//             ),
//             const SizedBox(height: 32),
//             const SignupForm(),
//             const SizedBox(height: 16),
//             Text(
//               '"Thank you for this great course (and all the great videos). The best part is simply how you have it organized, and the superior job in picking out resources."',
//               textAlign: TextAlign.center,
//               style: Theme.of(context)
//                   .textTheme
//                   .titleSmall!
//                   .copyWith(fontWeight: FontWeight.normal, color: Colors.white),
//             ),
//             const SizedBox(height: 8),
//             Text(
//               'Andy Drexler',
//               textAlign: TextAlign.center,
//               style: Theme.of(context).textTheme.titleSmall!.copyWith(
//                   fontWeight: FontWeight.normal, color: WebColors.neutral4),
//             ),
//             const SizedBox(height: 120),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class SignupForm extends StatelessWidget {
//   const SignupForm({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;
//     bool isWide = screenWidth > Breakpoints.tablet;
//     if (isWide) {
//       return const SizedBox(
//         height: 48,
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Expanded(
//               flex: 2,
//               child: WelcomeEmailField(),
//             ),
//             SizedBox(width: 16),
//             Expanded(
//               child: WelcomeEmailSignupButton(),
//             )
//           ],
//         ),
//       );
//     } else {
//       return const Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           SizedBox(height: 48, child: WelcomeEmailField()),
//           SizedBox(height: 16),
//           SizedBox(
//             height: 48,
//             child: WelcomeEmailSignupButton(),
//           ),
//         ],
//       );
//     }
//   }
// }
//
// class WelcomeEmailField extends StatelessWidget {
//   const WelcomeEmailField({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const EmailField(
//       fillColor: WebColors.neutral5,
//       hintColor: WebColors.neutral2,
//     );
//   }
// }
//
// class WelcomeEmailSignupButton extends StatelessWidget {
//   const WelcomeEmailSignupButton({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const EmailSignupButton(
//       primary: WebColors.primary5,
//       onPrimary: Colors.white,
//     );
//   }
// }



class SignupSection extends StatelessWidget {
  const SignupSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final screenWidth = constraints.maxWidth;
        bool isWide = screenWidth > Breakpoints.tablet;
        return Container(
          width: (screenWidth > Breakpoints.pc ? Breakpoints.pc : screenWidth).toDouble(),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 48),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'The Best Flutter Tutorials. Right in Your Inbox.',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 16),
              RichText(
                text: TextSpan(
                  text: 'Join over 20,000 developers who are taking their Flutter skills to the next level with my free ',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: WebColors.neutral3,
                  ),
                  children: const <TextSpan>[
                    TextSpan(
                      text: 'Flutter email course & newsletter:',
                      style: TextStyle(
                        color: WebColors.neutral2,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32),
              _buildSignupForm(isWide),
              const SizedBox(height: 32),
              _buildTestimonial(context),
            ],
          ),
        );
      },
    );
  }

  Widget _buildSignupForm(bool isWide) {return isWide
      ? Row(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      Expanded(
        flex: 2,
        child: _buildEmailField(),
      ),
      const SizedBox(width: 16),
      Expanded(
        child: _buildSignupButton(),
      ),
    ],
  )
      : Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      _buildEmailField(),
      const SizedBox(height: 16),
      _buildSignupButton(),
    ],
  );
  }

  Widget _buildEmailField() {
    return const SizedBox(
      height: 48,
      child: EmailField(
        fillColor: WebColors.neutral5,
        hintColor: WebColors.neutral2,
      ),
    );
  }

  Widget _buildSignupButton() {
    return const SizedBox(
      height: 48,
      child: EmailSignupButton(
        primary: WebColors.primary5,
        onPrimary: Colors.white,
      ),
    );
  }

  Widget _buildTestimonial(BuildContext context) {
    return Column(
      children: [
        Text(
          '"Thank you for this great course (and all the great videos). The best part is simply how you have it organized, and the superior job in picking out resources."',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
            color: Colors.white,
            fontStyle: FontStyle.italic,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          '- Andy Drexler',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
            color: WebColors.neutral4,
            fontStyle: FontStyle.italic,
          ),
        ),
      ],
    );
  }
}