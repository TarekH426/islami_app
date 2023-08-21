import 'package:flutter/material.dart';

class RadioView extends StatelessWidget {
  const RadioView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/images/Radio.png"),
        Container(
          child: Text(
            "اذاعة القرأن الكريم",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Icon(
            Icons.skip_previous,
            size: 50,
          ),
          SizedBox(
            width: 30,
          ),
          Icon(
            Icons.play_arrow,
            size: 50,
          ),
          SizedBox(
            width: 30,
          ),
          Icon(
            Icons.skip_next,
            size: 50,
          )
        ])
      ],
    );
  }
}
