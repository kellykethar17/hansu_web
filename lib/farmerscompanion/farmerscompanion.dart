import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hansu_web/color/web_colors.dart';
import 'package:hansu_web/farmerscompanion/farmercompanion.dart';
import 'package:hansu_web/web_header/web_header.dart';
import 'package:hansu_web/widgets/footer.dart';

class FarmersCompanion extends StatefulWidget {
  const FarmersCompanion({super.key});
  @override
  State<FarmersCompanion> createState() => _FarmersCompanionState();
}

class _FarmersCompanionState extends State<FarmersCompanion> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: WebColors.neutral1,
      child: SafeArea(
        child: SizedBox(
          height: context.devicePixelRatio,
          child: const CustomScrollView(
            slivers: [
              SliverToBoxAdapter(child: WebHeader()),
              // SliverToBoxAdapter(
              //   child: FarmerCompanion(),
              // ),
              // // SliverToBoxAdapter(
              // //     child: VideoPlayerScreen(
              // //         videoUrl: 'https://www.youtube.com/watch?v=bSKQGTl7zr4')),
              // SliverToBoxAdapter(
              //   child: FarmerCompanionContent(),
              // ),
              // SliverToBoxAdapter(
              //   child: FarmerCompanionFooter(),
              // ),
              SliverToBoxAdapter(child: Footer())
            ],
          ),
        ),
      ),
    );
    throw UnimplementedError();
  }
}
