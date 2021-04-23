import 'package:care_me/components/button.dart';
import 'package:care_me/screens/login/login.dart';
import 'package:care_me/screens/signup/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceAround,
           children: <Widget>[
             ClipPath(
                clipper: MyClipper(),
                child: Container(
                  height: 100.0,
                  decoration: BoxDecoration(
                    color: Colors.purple[50],
                  ),
                ),
              ),
             Container(
               padding: EdgeInsets.only(top: 50.0),
               child: Center(
                 child: Text(
                   'WELCOME TO CAREME',
                   style: TextStyle(
                     fontSize: 30.0,
                     fontWeight: FontWeight.bold,
                     color: Colors.purple[600],
                   ),
                 ),
               ),
             ),
             Container(
               height: 300.0,
               //width: 300.0,
               //color: Colors.lightBlue,
               decoration: BoxDecoration(
                 //color: Colors.lightBlue,
                 image: DecorationImage(
                   alignment: Alignment.bottomCenter,
                   image: AssetImage(
                       'assets/images/image2.png',
                   ),
                 ),
               ),

               ),
             Padding(
               padding: const EdgeInsets.only(top: 30.0),
               child: Container(
                 //color: Colors.lightBlue,
                   //padding: EdgeInsets.only(top: 30.0),
                   child: Button(
                     text: 'LOGIN',
                     textColor: Colors.white,
                     color: Colors.purple[500],
                     press: (){
                       Navigator.push(context,
                         MaterialPageRoute(
                           builder: (context){
                             return Login();
                           }
                         )
                       );

                     },

                   )
               ),
             ),
             Container(
                 //padding: EdgeInsets.all(5.0),
                 child: Button(
                   text: 'SIGN UP',
                   textColor: Colors.purple[500],
                   color: Colors.purple[50],
                   press: () {
                     Navigator.push(context,
                     MaterialPageRoute(
                       builder: (context){
                         return Signup();
                       }
                     ),
                     );
                   },
                 )
             )
            ],
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path>{
   @override
   Path getClip(Size size) {
     var path = new Path();
     path.lineTo(0, size.height);
     var controllPoint = Offset(100, size.height);
     var endPoint = Offset(size.width/2, 0); //size.width/2, size.height
     path.quadraticBezierTo(controllPoint.dx, controllPoint.dy, endPoint.dx, endPoint.dy);
     path.lineTo(size.width / 2, 0);
     //path.lineTo(size.width, 0);
     return path;
   }

   @override
   bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
     // TODO: implement shouldReclip
     return true;
   }

}

