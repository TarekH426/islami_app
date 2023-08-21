import 'package:flutter/material.dart';

import '../../core/style/my_theme.dart';

class SebhaView extends StatefulWidget {
  @override
  State<SebhaView> createState() => _SebhaViewState();
}

class _SebhaViewState extends State<SebhaView> {
  // int counterButton = 0;
  double angle = 0.0;
  int counter = 1;
  List<String> Zekr = [
    "سبحان الله",
    "استغفر الله",
    "الله اكبر",
  ];
  String title = "";
  late int index = 0;
  int count = 33;

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
              child: Image.asset(MyTheme.thememode != ThemeMode.dark
                  ? 'assets/images/head of seb7a_light.png'
                  : "assets/images/head of seb7a_dark.png")),
          InkWell(
            onTap: () {
              setState(() {
                angle--;
              });
            },
            child: Transform.rotate(
              angle: angle,
              child: Image.asset(MyTheme.thememode != ThemeMode.dark
                  ? 'assets/images/body of seb7a_light.png'
                  : "assets/images/body of seb7a_dark.png"),
            ),
          ),
        ],
      ),
      const SizedBox(
        height: 50,
      ),
      Text(
        'عدد التسبيحات',
        style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w400,
            color: MyTheme.thememode != ThemeMode.dark
                ? Colors.black
                : Colors.white),
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
              color: MyTheme.thememode != ThemeMode.dark
                  ? Color(0x86B7935F)
                  : Color(0xFF141A2E).withOpacity(0.75)),
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text(
            "$counter",
            style: TextStyle(
                fontSize: 20,
                color: MyTheme.thememode != ThemeMode.dark
                    ? Colors.black
                    : Colors.white),
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
                  color: MyTheme.thememode != ThemeMode.dark
                      ? Color(0xFFB7935F)
                      : Color(0xFFFACC10)),
              child: Text(
                "${Zekr[index + 1]}",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: MyTheme.thememode != ThemeMode.dark
                        ? Colors.white
                        : Colors.black),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(
            width: 15,
          ),
          FloatingActionButton.small(
              backgroundColor: MyTheme.thememode != ThemeMode.dark
                  ? Color(0xFFB7935F)
                  : Color(0xFFFACC10),
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
  }

  void IncreamentCount() {
    setState(() {
      if (counter == 33) {
        title = Zekr[1];
        counter = 0;
      }
    });
    counter++;
  }

  decreasedAngle() {
    setState(() {
      angle++;
    });
  }
}

// int counter=1;
//
// class SebhaView extends StatefulWidget {
//   @override
//   State<SebhaView> createState() => _SebhaViewState();
// }

// class _SebhaViewState extends State<SebhaView> {
//
//
//   @override
//   // Widget build(BuildContext context) {
//   //   return Padding(
//   //     padding: const EdgeInsets.symmetric(vertical: 30),
//   //
//   //     child: Center(
//   //         child: Column(
//   //             crossAxisAlignment: CrossAxisAlignment.center,
//   //             children: [
//   //               Stack(
//   //                 alignment: Alignment.topCenter,
//   //                 children: [
//   //                   Image.asset("assets/images/head of seb7a_light.png",),
//   //                   Container(
//   //                     margin: EdgeInsets.only(
//   //                       top: 70
//   //                     ),
//   //                       child: Image.asset("assets/images/body of seb7a_light.png",)),
//   //                 ],
//   //               ),
//   //
//   //               Container(
//   //                 padding: EdgeInsets.only(top: 30),
//   //                 child: Text(
//   //                   "عدد التسبيحات",
//   //                   style: TextStyle(fontSize: 20
//   //                   ),
//   //                 ),),
//   //               Container(
//   //
//   //                   width: 50,
//   //                   decoration: BoxDecoration(
//   //                     borderRadius: BorderRadius.circular(20),
//   //                     color: Color(0x86B7935F),),
//   //
//   //                   padding: EdgeInsets.symmetric(vertical: 10),
//   //                   child: Text("$count", style: TextStyle(fontSize: 20),
//   //                     textAlign: TextAlign.center,
//   //                   )),
//   //               SizedBox(height: 25,),
//   //               Row(
//   //                 mainAxisAlignment: MainAxisAlignment.center,
//   //                 children: [
//   //
//   //                   InkWell(
//   //                     onTap: IncreamentCount,
//   //
//   //                     child: Container(
//   //                       height:45, width: 120,
//   //                       decoration: BoxDecoration(
//   //                           borderRadius: BorderRadius.circular(25),
//   //                           color: Theme.of(context).primaryColor),
//   //                       child: Text(""
//   //                         , style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),
//   //                         textAlign: TextAlign.center,
//   //                       ),
//   //                     ),
//   //                   ),
//   //                   SizedBox(width: 15,),
//   //                   FloatingActionButton.small(
//   //                       backgroundColor:Theme.of(context).primaryColor
//   //                       ,
//   //                       shape: RoundedRectangleBorder(
//   //                         borderRadius: BorderRadius.circular((10)),
//   //                       ), child: Icon(Icons.restart_alt),
//   //                       onPressed: () {
//   //                         setState(() {
//   //                           count = 0;
//   //                         });
//   //                       }
//   //
//   //                   )
//   //                 ],
//   //
//   //
//   //               )
//   //             ]
//   //         )
//   //     ),
//   //   );
//   // }
//
//   void IncreamentCount() {
//     setState(() {
//       counter++;
//       if(counter==33){
//
//       }
//       count++;
//     });
//   }
//
//
// }
