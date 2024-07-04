import 'package:flutter/material.dart';
import 'package:hansu_web/color/web_colors.dart';
import 'package:hansu_web/web_header/web_header.dart';
import 'package:hansu_web/widgets/footer.dart';

import 'about_content.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return const Material(
      color: WebColors.neutral1,
      child: SafeArea(
          child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: WebHeader()),
          // SliverToBoxAdapter(child: SectionSeparator(),),
          SliverToBoxAdapter(child: AboutSection()),
          SliverToBoxAdapter(child: Footer()),
        ],
      )),
    );
  }
}
