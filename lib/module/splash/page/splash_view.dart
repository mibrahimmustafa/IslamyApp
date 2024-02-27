import 'dart:async';
import 'package:flutter/material.dart';
import 'package:islami_app/layout/layout_view.dart';

class SplashView extends StatefulWidget {
  static const String routeName='/Splash_view';

  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Timer(
        const Duration(seconds: 2),
      () {
          Navigator.pushReplacementNamed(context, LayoutView.routeName);
      },
    );
    // TODO: implement initState
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    var mediaquery=MediaQuery.of(context).size;
    return Scaffold(
    //  backgroundColor: Colors.red,
      body: Image.asset("assets/images/splash/splash_background.png",
          height: mediaquery.height,
        width: mediaquery.width,
        fit: BoxFit.cover,
      ),
    );
  }
}

