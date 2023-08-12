import 'package:flutter/material.dart';
import 'package:islami_app/modules/hadeth/hadeth_view.dart';
import 'package:islami_app/modules/quran/quran_view.dart';
import 'package:islami_app/modules/radio/radio_view.dart';
import 'package:islami_app/modules/sebha/sebha_view.dart';
import 'package:islami_app/modules/settings/settings_view.dart';

class HomeLayout extends StatefulWidget {
  static const String routeName = "home_layout";

  HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int selectedIndex = 0;
  List<Widget> screenWidgets = [
    QuranView(),
    HadethView(),
    SebhaView(),
    RadioView(),
    SettingsView()
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background_light.png"),
              fit: BoxFit.fill)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text("islami"),
        ),
        body: screenWidgets[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/ic_quran.png")),
              label: "Quran",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/ic_hadeth.png")),
              label: "Hadeth",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/ic_sebha.png")),
              label: "Tasbeh",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/ic_radio.png")),
              label: "Radio",
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                ),
                label: "settings")
          ],
        ),
      ),
    );
  }
}
