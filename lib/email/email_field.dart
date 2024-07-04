import 'package:flutter/material.dart';

import '../color/web_colors.dart';

class EmailField extends StatelessWidget {
  const EmailField(
      {super.key, required this.fillColor, required this.hintColor});
  final Color fillColor;
  final Color hintColor;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.white,
      style:
          Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.white),
      decoration: InputDecoration(
          hintText: 'Email',
          hintStyle: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(color: hintColor),
          filled: true,
          fillColor: fillColor,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(7.0)),
            borderSide: BorderSide(color: WebColors.neutral4, width: 2),
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(7.0)),
            borderSide: BorderSide(color: WebColors.neutral4, width: 2),
          ),
          focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(7.0)),
              borderSide: BorderSide(color: WebColors.neutral4, width: 2))),
    );

  }
}
