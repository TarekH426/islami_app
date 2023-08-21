import 'package:flutter/material.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "Language",
              style: TextStyle(),
              textAlign: TextAlign.start,
            ),
            Container(
              margin: EdgeInsets.only(top: 25),
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              height: 45,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.white)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("English"),
                  Icon(
                    Icons.arrow_drop_down_sharp,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            const Text(
              "Theme Mode",
              style: TextStyle(),
              textAlign: TextAlign.start,
            ),
            Container(
              margin: EdgeInsets.only(top: 25),
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              height: 45,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.white)),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Dark"),
                  Icon(
                    Icons.arrow_drop_down_sharp,
                    color: Colors.white,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
