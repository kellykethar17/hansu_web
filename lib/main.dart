import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:hansu_web/widgets/screen.dart';

import 'color/web_theme.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      // TODO: Save this as breakpoint
      final isDesktop = constraints.maxWidth > Breakpoints.tablet;
      final textTheme = isDesktop ? PcTheme() : PhoneTheme();
      return GetMaterialApp(
        title: 'Hansu',
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.dark,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: TextTheme(
            displayLarge: textTheme.h1,
            displayMedium: textTheme.h2,
            displaySmall: textTheme.h3,
            headlineMedium: textTheme.h4,
            headlineSmall: textTheme.h5,
            titleLarge: textTheme.h6,
            titleMedium: textTheme.subtitle1,
            titleSmall: textTheme.subtitle2,
            bodyLarge: textTheme.body,
            labelLarge: textTheme.button,
          ),
          // TODO: Make it work!
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          hoverColor: Colors.transparent,
        ),
        home: const Home(),
      );
    });
  }
}
