import 'package:care_me/screens/signup/background.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          child: Container(
            margin: const EdgeInsets.all(24.0),
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 50.0),
                  child: Text(
                    'SIGN UP',
                    style: TextStyle(
                      color: Colors.purple[500],
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20.0),
                  child: TextFormField(
                    //maxLines: 2,
                    decoration: InputDecoration(
                      focusColor: Colors.purple[500],
                      hintText: 'Full Name',
                      hintStyle: TextStyle(
                        color: Colors.purple[200]
                      ),
                    ),
                    cursorHeight: 25.0,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20.0),
                  child: TextFormField(
                    //maxLines: 2,
                    decoration: InputDecoration(
                      focusColor: Colors.purple[500],
                      hintText: 'NIC',
                      hintStyle: TextStyle(
                          color: Colors.purple[200]
                      ),
                    ),
                    cursorHeight: 25.0,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20.0),
                  child: TextFormField(
                    //maxLines: 2,
                    decoration: InputDecoration(
                      focusColor: Colors.purple[500],
                      hintText: 'Mobile Number',
                      hintStyle: TextStyle(
                          color: Colors.purple[200]
                      ),
                    ),
                    cursorHeight: 25.0,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20.0),
                  child: TextFormField(
                    //maxLines: 2,
                    decoration: InputDecoration(
                      focusColor: Colors.purple[500],
                      hintText: 'Address',
                      hintStyle: TextStyle(
                          color: Colors.purple[200]
                      ),
                    ),
                    cursorHeight: 25.0,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20.0),
                  child: TextFormField(
                    //maxLines: 2,
                    decoration: InputDecoration(
                      focusColor: Colors.purple[500],
                      hintText: 'Password',
                      hintStyle: TextStyle(
                          color: Colors.purple[200]
                      ),
                    ),
                    cursorHeight: 25.0,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20.0),
                  child: TextFormField(
                    //maxLines: 2,
                    decoration: InputDecoration(
                      focusColor: Colors.purple[500],
                      hintText: 'Confirm Password',
                      hintStyle: TextStyle(
                          color: Colors.purple[200]
                      ),
                    ),
                    cursorHeight: 25.0,
                  ),
                ),
                SizedBox(
                  height: 100.0,
                  width: 200.0,
                ),
                Container(

                )
              ],
            ),
          )
        ),
      ),
    );
  }
}
