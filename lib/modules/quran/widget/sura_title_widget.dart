import 'package:flutter/material.dart';

class SuraTitleHeaderWidget extends StatelessWidget {
  const SuraTitleHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(children: [
      Divider(
        color: theme.primaryColor,
        thickness: 2,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            "رقم السورة",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w400,
            ),
          ),
          Container(
            width: 2,
            height: 40,
            color: theme.primaryColor,
          ),
          Text(
            "اسم السورة",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
      Divider(
        color: theme.primaryColor,
        thickness: 2,
      ),
    ]);
  }
}
