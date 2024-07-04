import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hansu_web/about.dart';
import 'package:hansu_web/contacts.dart';
import 'package:hansu_web/farmerscompanion/farmerscompanion.dart';
import 'package:hansu_web/services.dart';

import '../assets/ref/hub.dart';
import '../color/web_colors.dart';

class PhoneNavMenu extends StatelessWidget {
  const PhoneNavMenu({super.key});

  static const menuHeight = 56 * 4 + 64;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: WebColors.neutral6,
      child: ListView(
        shrinkWrap: true,
        children: [
          GestureDetector(
            onTap: () {
              Get.to(const About());
            },
            child: const PhoneMenuListTile(
              title: 'About',
            ),
          ),
          GestureDetector(
            onTap: () {
              Get.to(const FarmersCompanion());
            },
            child: const PhoneMenuListTile(
              title: 'Farmers Companion',
            ),
          ),
          GestureDetector(
            onTap: () {
              Get.to(const Services());
            },
            child: const PhoneMenuListTile(
              title: 'Events',
            ),
          ),
          GestureDetector(
            onTap: () {
              Get.to(const Contacts());
            },
            child: const PhoneMenuListTile(
              title: 'Contacts',
            ),
          ),
          Container(
            height: 64.0,
            alignment: Alignment.center,
            child: PhoneToggleButton(onPressed: () {}),
          )
        ],
      ),
    );
  }
}

class PhoneMenuListTile extends StatelessWidget {
  const PhoneMenuListTile({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Text(
          title,
          textAlign: TextAlign.left,
          style: Theme.of(context)
              .textTheme
              .titleSmall!
              .copyWith(color: Colors.white),
        ),
      ),
    );
  }
}

class PhoneToggleButton extends StatelessWidget {
  const PhoneToggleButton({super.key, this.onPressed});
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        foregroundColor: WebColors.neutral6,
        side: const BorderSide(color: WebColors.neutral2),
        shape: const StadiumBorder(),
      ),
      child: SizedBox(
        height: 40,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(Hub.toggle),
            const SizedBox(width: 12),
            Text('Switch to light mode',
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .copyWith(color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
