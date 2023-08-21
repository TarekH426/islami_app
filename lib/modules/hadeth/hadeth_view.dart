import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/modules/hadeth/hadeth_details.dart';

import '../../core/style/my_theme.dart';

List<HadethData> allHadeth = [];

class HadethView extends StatelessWidget {
  HadethView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    HadethReadFile();
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset("assets/images/hadethHead.png"),
        Divider(
          color: MyTheme.thememode != ThemeMode.dark
              ? Color(0xffB7935F).withOpacity(0.7)
              : Color(0xFFFACC10).withOpacity(0.7),
          thickness: 1.5,
          indent: 20,
          endIndent: 20,
        ),
        Text(
          "الاحاديث",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 25,
            color: MyTheme.thememode != ThemeMode.dark
                ? Colors.black.withOpacity(0.7)
                : Color(0xFFFACC10).withOpacity(0.7),
          ),
        ),
        Divider(
          color: MyTheme.thememode != ThemeMode.dark
              ? Color(0xffB7935F).withOpacity(0.7)
              : Color(0xFFFACC10).withOpacity(0.7),
          thickness: 1.5,
          indent: 20,
          endIndent: 20,
        ),
        Expanded(
            child: ListView.builder(
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(HadethDetails.routeName,
                    arguments: allHadeth[index]);
              },
              child: Text(
                allHadeth[index].title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  color: MyTheme.thememode != ThemeMode.dark
                      ? Colors.black.withOpacity(0.7)
                      : Color(0xFFFACC10).withOpacity(0.7),
                ),
              ),
            );
          },
          itemCount: allHadeth.length,
          // separatorBuilder: (context,index)=>
          //     Divider(
          //   color:MyTheme.thememode!=ThemeMode.dark
          //       ?Colors.white.withOpacity(0.7)
          //       :Color(0xFFFACC10).withOpacity(0.7),
          //   thickness: 1.5,
          // )
        )),
      ],
    ));
  }
}

void HadethReadFile() async {
  List<HadethData> list = [];
  String content = await rootBundle.loadString("assets/files/ahadeth .txt");
  List<String> allHadethContent = content.split("#");

  for (int i = 0; i < allHadethContent.length; i++) {
    String singleHadethContent = allHadethContent[i].trim();
    int indexofFirstline = singleHadethContent.indexOf("\n");
    String title = singleHadethContent.substring(0, indexofFirstline);
    String content = singleHadethContent.substring(indexofFirstline + 1);

    HadethData hadeth = HadethData(title, content);
    list.add(hadeth);

    //  List<String> singlehadethlines=allHadethContent[i].trim().split("\n");
    // String title= singlehadethlines[0];
//singlehadethlines.removeAt(0);
//String content=singlehadethlines.join("\n");
  }
  allHadeth = list;
}

class HadethData {
  String title;
  String content;

  HadethData(this.title, this.content);
}
