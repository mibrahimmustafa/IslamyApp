import 'package:flutter/material.dart';
class SurahTitleWidget  extends StatelessWidget {
   String surahName;
   String surahNumber;

   SurahTitleWidget ({
    super.key,
    required this.surahName,
    required this.surahNumber,
  });

  @override
  Widget build(BuildContext context) {
   // var mediaquery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    return   Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
         Text(
          surahNumber,
          //textAlign: TextAlign.start,
          style: const TextStyle(
            fontFamily: "El Messiri",
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),

        VerticalDivider(
          color: theme.primaryColor,
          thickness: 2,
        ),
         Text(
          surahName,
           //textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: "El Messiri",
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),

      ],
    );
  }
}
