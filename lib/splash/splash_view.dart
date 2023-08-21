import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islami_app/core/style/my_theme.dart';
import 'package:islami_app/layout/home_layout.dart';

class SplashView extends StatelessWidget {
  static const String routeName = "splash";

  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacementNamed(HomeLayout.routeName);
    });
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(MyTheme.thememode != ThemeMode.dark
                  ? "assets/images/splash_background.png"
                  : "assets/images/splash_dark.png"),
              fit: BoxFit.fill)),
    );
  }
}
