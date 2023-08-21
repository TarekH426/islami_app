import 'package:flutter/material.dart';

class DarkSebhaView extends StatefulWidget {
  @override
  State<DarkSebhaView> createState() => _DarkSebhaViewState();
}

class _DarkSebhaViewState extends State<DarkSebhaView> {
  int counter = 0;
  List<String> Zekr = [
    "سبحان الله",
    "استغفر الله",
    "الله اكبر",
  ];
  int index = 0;
  double angle = 0.0;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Center(
        child: Column(children: [
      const SizedBox(
        height: 60,
      ),
      Stack(
        alignment: Alignment.center,
        clipBehavior: Clip.none,
        children: [
          Positioned(
              top: -72,
              child: Image.asset('assets/images/head of seb7a_dark.png')),
          InkWell(
            onTap: () {
              setState(() {
                angle--;
              });
            },
            child: Transform.rotate(
              angle: angle,
              child: Image.asset('assets/images/body of seb7a_dark.png'),
            ),
          ),
        ],
      ),
      const SizedBox(
        height: 50,
      ),
      const Text(
        'عدد التسبيحات',
        style: TextStyle(
            fontSize: 24, fontWeight: FontWeight.w400, color: Colors.white),
      ),
      const SizedBox(
        height: 20,
      ),

      // Container(
      //   width: 69,
      //   height: 81,
      //   decoration: BoxDecoration(
      //     borderRadius: BorderRadius.circular(25),
      //   ),
      //   child: ElevatedButton(
      //     style: ElevatedButton.styleFrom(
      //       backgroundColor: theme.primaryColor.withOpacity(0.8),
      //     ),
      //     onPressed: () {
      //       setState(() {
      //         counterButton++;
      //       });
      //     },
      //     child: Text(
      //       '$counterButton',
      //       style: TextStyle(
      //         color: Colors.black,
      //       ),
      //     ),
      //   ),
      // ),
      const SizedBox(
        height: 20,
      ),
      // Container(
      //   decoration: BoxDecoration(
      //     borderRadius: BorderRadius.circular(12),
      //     color: theme.primaryColor,
      //   ),
      //   padding: EdgeInsets.all(6),
      //   child: Text(
      //     'سبحان الله',
      //     style: TextStyle(
      //       fontSize: 24,
      //       fontWeight: FontWeight.w400,
      //     ),
      //   ),
      // ),
      Container(
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.transparent,
          ),
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text(
            "$counter",
            style: TextStyle(fontSize: 20, color: Colors.white),
            textAlign: TextAlign.center,
          )),
      SizedBox(
        height: 25,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              IncreamentCount();
              Transform.rotate(angle: angle--);
            },
            child: Container(
              height: 45,
              width: 120,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Color(0xFFFACC10)),
              child: Text(
                "${Zekr[index]}",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(
            width: 15,
          ),
          FloatingActionButton.small(
              backgroundColor: Theme.of(context).canvasColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular((10)),
              ),
              child: Icon(Icons.restart_alt),
              onPressed: () {
                setState(() {
                  counter = 0;
                });
              })
        ],
      ),
    ]));
    ;
  }

  void IncreamentCount() {
    setState(() {});
    counter++;
  }
}
