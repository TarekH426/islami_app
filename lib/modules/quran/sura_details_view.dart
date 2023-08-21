import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/core/style/my_theme.dart';
import 'package:islami_app/modules/quran/widget/suraName_widget.dart';

class SuraDetailsView extends StatefulWidget {
  SuraDetailsView({super.key});

  static const String routeName = "sura_detail";

  @override
  State<SuraDetailsView> createState() => _SuraDetailsViewState();
}

class _SuraDetailsViewState extends State<SuraDetailsView> {
  String versContent = "";
  List<String> versList = [];
  late int index;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var args = ModalRoute.of(context)!.settings.arguments as SuraDetails;

    if (versContent.isEmpty) readFile(args.suraIndex);

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
                  ? Color(0xFFF8F8F8).withOpacity(0.75)
                  : Color(0xFF141A2E).withOpacity(0.75),
              borderRadius: BorderRadius.circular(25)),
          margin: EdgeInsets.only(top: 15, bottom: 80, left: 30, right: 30),
          padding: EdgeInsets.only(top: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                      "سورة ${args.suraName}",
                      style: theme.textTheme.titleLarge!.copyWith(
                          color: MyTheme.thememode != ThemeMode.dark
                              ? Colors.black
                              : Color(0xFFFACC10))),
                  const SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.play_circle,
                    color: Colors.black,
                  )
                ],
              ),
              Divider(
                color: MyTheme.thememode != ThemeMode.dark
                    ? Color(0xffB7935F).withOpacity(0.7)
                    : Color(0xFFFACC10).withOpacity(0.7),
                thickness: 1.5,
                indent: 40,
                endIndent: 40,
              ),
              Expanded(
                  child: ListView.builder(
                itemBuilder: (context, index) => Container(
                  padding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                  // decoration: BoxDecoration(
                  //     color: Color(0xFF141A2E)
                  // ),
                  child: Text(
                    "${versList[index]} (${index + 1})",
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodyMedium!.copyWith(
                        color: MyTheme.thememode != ThemeMode.dark
                            ? Colors.black
                            : Color(0xFFFACC10)),
                  ),
                ),
                itemCount: versList.length,
              )),
            ],
          ),
        ),
      ),
    );
  }

  readFile(int index) async {
    String text = await rootBundle.loadString("assets/files/${index + 1}.txt");
    versContent = text;
    versList = versContent.split("\n");

    setState(() {});
  }
}
