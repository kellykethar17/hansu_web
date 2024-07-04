import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../assets/ref/hub.dart';
import '../home.dart';

class WebLogo extends StatelessWidget {
  const WebLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: GoHome, child: Image.asset(Hub.webLogo));
  }

  GoHome() {
    Get.to(const Home());
  }
}
