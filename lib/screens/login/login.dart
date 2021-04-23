import 'package:care_me/components/button.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Container(
              child: Text(
                'LOGIN',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple[500],
                ),
              ),
            ),
            Container(
              height: 300.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  alignment: Alignment.center,
                  image: AssetImage(
                    'assets/images/image3.png',
                  )
                )
              ),
            ),
            Form(
              child: Container(
                margin: const EdgeInsets.all(24.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(top: 20.0),
                      child: TextFormField(
                        //maxLines: 2,
                        decoration: InputDecoration(
                          focusColor: Colors.purple[500],
                          hintText: 'Email',
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
                    SizedBox(
                      height: 50.0,
                      width: 200.0,
                    ),
                    Container(
                      child: Button(
                        text: 'Submit',
                        textColor: Colors.white,
                        color: Colors.purple[500],
                        press: (){},
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
