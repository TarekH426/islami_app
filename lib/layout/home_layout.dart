import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/core/style/my_theme.dart';
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
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(MyTheme.thememode != ThemeMode.dark
                  ? "assets/images/background_light.png"
                  : "assets/images/background_dark.png"),
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
          items: [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/ic_quran.png")),
                label: AppLocalizations.of(context)!.quran),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/ic_hadeth.png")),
              label: AppLocalizations.of(context)!.hadeth,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/ic_sebha.png")),
              label: AppLocalizations.of(context)!.tasbeh,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/ic_radio.png")),
              label: AppLocalizations.of(context)!.radio,
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                ),
                label: AppLocalizations.of(context)!.settings)
          ],
        ),
      ),
    );
  }
}
