import 'package:flutter/material.dart';
import 'package:islami_app/module/hadeth/page/hadeth_view.dart';
import 'package:islami_app/module/quran/page/quran_view.dart';
import 'package:islami_app/module/radio/page/radio_view.dart';
import 'package:islami_app/module/setting/page/setting_view.dart';
import 'package:islami_app/module/tasbeh/page/tasbeh_view.dart';
class LayoutView extends StatefulWidget {
  static const String routeName='layout';

  const LayoutView({super.key});

  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
  int currentindex=0;
  List<Widget> screens=[quranView(),
    HadethView(),
    tasbehView(),
    radioView(),
    settingView(),
    ];

  @override
  Widget build(BuildContext context) {
    //var mediaquery=MediaQuery.of(context).size;
    return
    Container(
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/images/main_background.png"),fit: BoxFit.cover),
      ),

      child: Scaffold(
        appBar: AppBar(
          title: const Text("اسلامي"),

        ),

        body: screens[currentindex],

        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentindex,
          onTap: (index) {
            currentindex=index;

            setState(() {
            });
          },
          items: const [
            BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/quran_icn.png")),label: "quran"),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/hadeth_icn.png")),label: "hadeth"),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/sebha_icn.png")),label: "sebha"),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/radio_icn.png")),label: "radio"),
            BottomNavigationBarItem(icon: Icon(Icons.settings),label: "setting"),
          ],
        ),
      ),
    );
  }
}
