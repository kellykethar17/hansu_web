import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'assets/strings/hub.dart';
import 'main.dart';
class WebLogo extends StatelessWidget {
  const WebLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: GoHome,
        child: Image.asset(Strings.webLogo));
  }

  GoHome() {
    Get.to(const Home());
  }
}