import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background_light.png"),
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
              color: Color(0xFFF8F8F8).withOpacity(0.7),
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
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.play_circle)
                ],
              ),
              Divider(
                color: theme.primaryColor,
                thickness: 1.5,
                indent: 40,
                endIndent: 40,
              ),
              Expanded(
                  child: ListView.builder(
                itemBuilder: (context, index) => Container(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                  child: Text(
                    "${versList[index]} (${index + 1})",
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 20),
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
