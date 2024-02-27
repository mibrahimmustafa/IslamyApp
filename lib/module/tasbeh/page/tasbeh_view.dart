import 'package:flutter/material.dart';

class tasbehView extends StatefulWidget {
  const tasbehView({super.key});

  @override
  State<tasbehView> createState() => _tasbehViewState();
}

class _tasbehViewState extends State<tasbehView> {
  double _rotationAngle = 0.0;
  int counter=0;
  int currentindex=0;
  List<String> changeTasbeh=['allah akber', 'sophan allah','alhamed u llah'];


  void _rotateImage() {
    setState(() {
      counter++;
      _rotationAngle += 45.0;
      if(counter<30){currentindex=0;}
      else if(counter<60&&counter>30){currentindex=1;}
      else if(counter<90&&counter>60){currentindex=2;}
      else{currentindex=0;}// Rotate by 45 degrees on each tap
    });
  }

  @override
  Widget build(BuildContext context) {
    //int counter=0;
    var theme = Theme.of(context);
    var mediaquery= MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Stack(
                children: [
                  Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/head of seb7a.png',height: mediaquery.height*0.12,),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 70),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: _rotateImage,
                          child: Transform.rotate(
                            angle: _rotationAngle* (3.1415926535897932 / 180.0),
                          child: Image.asset('assets/images/body of seb7a.png',height: mediaquery.height*0.3),
                              ),
                        ),

                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const Text("عدد التسبيحات",
          style: TextStyle(
            fontFamily: "El Messiri",
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),),
        Container(
          width: 65,
          height: 80,
          decoration: BoxDecoration(
            color: theme.primaryColor,
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          ),
          child:  Center(
            child:  Text(counter.toString(),
              style: TextStyle(
              fontFamily: "El Messiri",
              fontSize: 25,
              fontWeight: FontWeight.w400,

            ),),
          ),
        ),
        const SizedBox(height: 10,),
        Container(
          width: 165,
          height: 60,
          decoration: BoxDecoration(
            color: theme.primaryColor,
            borderRadius: const BorderRadius.all(Radius.circular(20)),
          ),
          child:  Center(
            child:  Text(changeTasbeh[currentindex],
              style: const TextStyle(
                fontFamily: "El Messiri",
                fontSize: 25,
                fontWeight: FontWeight.w400,
                color: Colors.white
              ),),
          ),
        ),

      ],
    );
  }
}
