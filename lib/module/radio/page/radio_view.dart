import 'package:flutter/material.dart';

class radioView extends StatelessWidget {
  const radioView({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaquery = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 120),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  child: Image.asset('assets/images/radio_page.png'),
                ),),
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Text(
              'اذاعة القران',
              style: TextStyle(
                fontFamily: "El Messiri",
                fontSize: 25,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('assets/images/Icon metro-next.png',height: mediaquery.height*0.05),
              Image.asset('assets/images/Icon awesome-play.png',height: mediaquery.height*0.05),
              Image.asset('assets/images/Icon metro-next.png',height: mediaquery.height*0.05),
            ],
          ),
        ],
      ),
    );
  }
}
