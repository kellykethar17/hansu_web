import 'package:flutter/material.dart';
import 'package:hansu_web/about.dart';
import 'package:hansu_web/color/web_colors.dart';
import 'package:hansu_web/contacts.dart';
import 'package:hansu_web/farmerscompanion/farmerscompanion.dart';
import 'package:hansu_web/services.dart';
import 'package:hansu_web/web_header/web_logo.dart';
import 'package:hansu_web/widgets/screen.dart';

import 'nav_link.dart';

class WebHeader extends StatelessWidget {
  const WebHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    bool isWide = screenWidth > Breakpoints.tablet;

    return Container(
      color: WebColors.neutral1,
      child: isWide ? const PcNavLayout() : const PhoneNavLayout(),
    );
  }
}

class PcNavLayout extends StatelessWidget {
  const PcNavLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    bool isVeryWide = screenWidth > Breakpoints.pc;

    return SizedBox(
      height: 65,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: isVeryWide ? 80 : 30,
          ),
          const WebLogo(),
          const Spacer(),
          const NavLink(
            text: 'About',
            destination: About(),
          ),
          const NavLink(
            text: 'Farmers Companion',
            destination: FarmersCompanion(),
          ),
          const NavLink(
            text: 'Services',
            destination: Services(),
          ),
          const NavLink(
            text: 'Contacts',
            destination: Contacts(),
          ),
          SizedBox(
            width: isVeryWide ? 80 : 30,
          )
        ],
      ),
    );
  }
}

class PhoneNavLayout extends StatelessWidget {
  const PhoneNavLayout({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
