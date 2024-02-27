import 'package:flutter/material.dart';

class settingView extends StatelessWidget {
  const settingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("setting",
          style: TextStyle(
              fontFamily: "El Messiri",
              fontSize: 40,
              fontWeight: FontWeight.bold
          )),
    );
  }
}
