import 'package:flutter/material.dart';

import '../../../core/style/my_theme.dart';

class SuraTitleHeaderWidget extends StatelessWidget {
  const SuraTitleHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(children: [
      Divider(
        color: MyTheme.thememode != ThemeMode.dark
            ? Color(0xffB7935F).withOpacity(0.7)
            : Color(0xFFFACC10).withOpacity(0.7),
        thickness: 2,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
              "رقم السورة",
              style: theme.textTheme.bodyLarge?.copyWith(
                  color: MyTheme.thememode != ThemeMode.dark
                      ? Colors.black
                      : Colors.white)),
          Container(
            width: 2,
            height: 40,
            color: theme.canvasColor,
          ),
          Text(
            "اسم السورة",
            style: theme.textTheme.bodyLarge?.copyWith(
                color: MyTheme.thememode != ThemeMode.dark
                    ? Colors.black
                    : Colors.white),
          )
        ],
      ),
      Divider(
        color: MyTheme.thememode != ThemeMode.dark
            ? Color(0xffB7935F).withOpacity(0.7)
            : Color(0xFFFACC10).withOpacity(0.7),
        thickness: 2,
      ),
    ]);
  }
}
