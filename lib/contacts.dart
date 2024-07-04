import 'package:flutter/material.dart';
import 'package:hansu_web/color/web_colors.dart';
import 'package:hansu_web/contact_content.dart';
import 'package:hansu_web/email_footer.dart';
import 'package:hansu_web/section_separator.dart';
import 'package:hansu_web/web_header/web_header.dart';
import 'package:hansu_web/widgets/footer.dart';

class Contacts extends StatefulWidget {
  const Contacts({super.key});

  @override
  State<Contacts> createState() => _Contacts();
}

class _Contacts extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
    return const Material(
      color: WebColors.neutral1,
      child: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: WebHeader(),
            ),
            SliverToBoxAdapter(
              child: ContactSection(),
            ),
            SliverToBoxAdapter(
              child: SectionSeparator(),
            ),
            SliverToBoxAdapter(
              child: EmailFooterSection(),
            ),
            SliverToBoxAdapter(
              child: Footer(),
            )
          ],
        ),
      ),
    );
  }
}
