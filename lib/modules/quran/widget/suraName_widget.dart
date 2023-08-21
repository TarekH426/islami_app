import 'package:flutter/material.dart';
import 'package:islami_app/modules/quran/sura_details_view.dart';

import '../../../core/style/my_theme.dart';

class SuraNameWidget extends StatelessWidget {
  final String suraName;
  final int suraNumber;

  const SuraNameWidget(
      {super.key, required this.suraName, required this.suraNumber});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, SuraDetailsView.routeName,
            arguments: SuraDetails(suraName, suraNumber));
      },
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: Text(
                  "${suraNumber + 1}",
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: MyTheme.thememode != ThemeMode.dark
                          ? Colors.black
                          : Colors.white)),
            ),
            Container(
              width: 2,
              height: 40,
              color: theme.canvasColor,
            ),
            Expanded(
              child: Text(
                  suraName,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: MyTheme.thememode != ThemeMode.dark
                          ? Colors.black
                          : Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}

class SuraDetails {
  String suraName;
  int suraIndex;

  SuraDetails(this.suraName, this.suraIndex);
}
