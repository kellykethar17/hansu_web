import 'package:flutter/material.dart';
import 'package:hansu_web/about_content.dart';
import 'package:hansu_web/color/web_colors.dart';
import 'package:hansu_web/contact_content.dart';
import 'package:hansu_web/section_separator.dart';
import 'package:hansu_web/service_content.dart';
import 'package:hansu_web/web_header/web_header.dart';
import 'package:hansu_web/welcome/welcome.dart';
import 'package:hansu_web/widgets/footer.dart';

import 'email_footer.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Material(
      color: WebColors.neutral6,
      child: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: WebHeader()),
            SliverToBoxAdapter(child: Welcome()),
            SliverToBoxAdapter(
              child: AboutSection(),
            ),
            SliverToBoxAdapter(child: SectionSeparator()),
            SliverToBoxAdapter(
              child: ServicesSection(),
            ),
            // SliverToBoxAdapter(
            //   child: ServiceContext(),
            // ),
            SliverToBoxAdapter(
              child: SectionSeparator(),
            ),
            SliverToBoxAdapter(
              child: ContactSection(),
            ),

            SliverToBoxAdapter(child: EmailFooterSection()),
            SliverToBoxAdapter(child: Footer()),
          ],
        ),
      ),
    );
  }
}
