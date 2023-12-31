import 'package:flutter/material.dart';
import 'package:islami_app/core/style/app_theme.dart';
import 'package:islami_app/layout/home_layout.dart';
import 'package:islami_app/modules/quran/sura_details_view.dart';
import 'package:islami_app/splash/splash_view.dart';

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
        initialRoute: SplashView.routeName,
        routes: {
          SplashView.routeName: (context) => const SplashView(),
          HomeLayout.routeName: (context) => HomeLayout(),
          SuraDetailsView.routeName: (context) => SuraDetailsView()
        },
        theme: Apptheme.lightTheme);
  }
}
