import 'package:flutter/material.dart';
import 'package:hansu_web/color/web_colors.dart';
import 'package:hansu_web/service_content.dart';
import 'package:hansu_web/web_header/web_header.dart';
import 'package:hansu_web/widgets/footer.dart';

class Services extends StatefulWidget {
  const Services({super.key});

  @override
  State<Services> createState() => _Services();
}

class _Services extends State<Services> {
  @override
  Widget build(BuildContext context) {
    return const Material(
      color: WebColors.neutral1,
      child: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: WebHeader()),
            SliverToBoxAdapter(
              child: ServicesSection(),
            ),
            // SliverToBoxAdapter(
            //   child: ServiceContext(),
            // ),
            SliverToBoxAdapter(child: Footer())
          ],
        ),
      ),
    );
  }
}
