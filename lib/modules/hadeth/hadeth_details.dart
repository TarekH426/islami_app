import 'package:flutter/material.dart';
import 'package:islami_app/core/style/my_theme.dart';
import 'package:islami_app/modules/hadeth/hadeth_view.dart';

class HadethDetails extends StatelessWidget {
  static const String routeName = "hadeth-details";

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as HadethData;
    var theme = Theme.of(context);
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
          title: Text("islami"),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              color: MyTheme.thememode != ThemeMode.dark
                  ? Color(0xFFF8F8F8).withOpacity(0.7)
                  : Color(0xFF141A2E).withOpacity(0.7),
              borderRadius: BorderRadius.circular(25)),
          margin: EdgeInsets.only(top: 15, bottom: 80, left: 30, right: 30),
          padding: EdgeInsets.only(top: 50),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "${args.title}",
                  style: theme.textTheme.bodyLarge?.copyWith(
                    color: MyTheme.thememode != ThemeMode.dark
                        ? Colors.black.withOpacity(0.7)
                        : Color(0xFFFACC10).withOpacity(0.7),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.play_circle,
                  color: MyTheme.thememode != ThemeMode.dark
                      ? Colors.black.withOpacity(0.7)
                      : Color(0xFFFACC10).withOpacity(0.7),
                ),
              ],
            ),
            Divider(
              color: MyTheme.thememode != ThemeMode.dark
                  ? Colors.black.withOpacity(0.7)
                  : Color(0xFFFACC10).withOpacity(0.7),
              thickness: 1.5,
              indent: 20,
              endIndent: 20,
            ),
            Container(
              // height: MediaQuery.of(context).size.height,
              //   margin: EdgeInsets.symmetric(horizontal: 10),
              width: MediaQuery.of(context).size.width,
              child: Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(25),
                  child: Text(args.content,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontSize: 17,
                        color: MyTheme.thememode != ThemeMode.dark
                            ? Colors.black.withOpacity(0.7)
                            : Color(0xFFFACC10).withOpacity(0.7),
                      )),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
