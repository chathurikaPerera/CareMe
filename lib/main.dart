import 'package:care_me/screens/welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: welcome(),
    );
  }
}
// class welcome extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery
//         .of(context)
//         .size;
//     return Scaffold(
//       body: Container(
//         height: 200.0,
//         width: 200.0,
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage(
//                 'assets/images/image2.png'
//             ),
//           ),
//         ),
//       ),
//     );
//
//
//     /*return Container(
//       height: size.height,
//       width: double.infinity,
//       child: Stack(
//         alignment: Alignment.center,
//         children: <Widget>[
//         Positioned(
//         top: 0,
//         left: 0,
//         child: Image.asset(
//           "assets/images/image2.png",
//           width: size.width * 0.3,
//         ),
//         ),
//         ],
//       ),
//     );
//     */
//   }
// }
//
//
