import 'package:care_me/components/button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final FirebaseAuth _auth = FirebaseAuth.instance; //for firebase
  final GlobalKey<FormState> _formkey = GlobalKey(); //form

  String _email, _password;


  void _submit(){

  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        //height: size.height,
        //width: double.infinity,
        child: SingleChildScrollView(
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
                height: 250.0,
                decoration: BoxDecoration(
                  //color: Colors.cyan,
                    image: DecorationImage(
                        alignment: Alignment.center,
                        image: AssetImage(
                          'assets/images/image3.png',
                        )
                    )
                ),
              ),
              Form(
                key: _formkey,
                child: Container(
                  margin: const EdgeInsets.all(24.0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(top: 20.0),
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            focusColor: Colors.purple[500],
                            //hintText: 'Email',
                            labelText: 'Email',
                            labelStyle: TextStyle(
                                color: Colors.purple[200]
                            ),
                          ),
                          cursorHeight: 25.0,
                          onSaved: (value){
                            _email = value;
                          },
                          validator: (value){
                            if(value.isEmpty || !value.contains('@'))
                              {
                                return 'Inavlid email';
                              }
                            return null;
                          },
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 20.0),
                        child: TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            focusColor: Colors.purple[500],
                            //hintText: 'Password',
                            labelText: 'Password',
                            labelStyle: TextStyle(
                                color: Colors.purple[200]
                            ),
                          ),
                          cursorHeight: 25.0,
                          validator: (value){
                            if(value.isEmpty)
                              {
                                return 'Inavlid Password';
                              }
                            return null;
                          },
                          onSaved: (value)
                          {
                            _password = value;
                          },
                        ),
                      ),
                      SizedBox(
                        height: 30.0,
                        //width: 200.0,
                      ),
                      Container(
                        child: Button(
                          text: 'Submit',
                          textColor: Colors.white,
                          color: Colors.purple[500],
                          press: (){
                            _submit();
                          },
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),

    );
  }
}
