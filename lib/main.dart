import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islami_app/config/application_theme_manager.dart';
import 'package:islami_app/layout/layout_view.dart';
import 'package:islami_app/module/splash/page/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'islami app',
      theme: ApplicationThemeManager.lightTheme,
      initialRoute: SplashView.routeName,
      routes: {
        SplashView.routeName:(context) => const SplashView(),
        LayoutView.routeName: (context) =>  LayoutView(),
      },
    );
  }
}

