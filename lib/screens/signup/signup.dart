import 'package:care_me/components/button.dart';
import 'package:care_me/screens/signup/background.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {

  final GlobalKey<FormState> _formkey = GlobalKey();
  TextEditingController _passwordController = new TextEditingController();
  void _submit(){

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formkey,
            child: Container(
              margin: const EdgeInsets.all(24.0),
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(top: 100.0),
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
                        labelText: 'Name',
                        labelStyle: TextStyle(
                            color: Colors.purple[200]
                        ),
                          icon: Icon(
                            Icons.account_circle_sharp,
                            color: Colors.deepPurple,
                          ),
                      ),
                      cursorHeight: 25.0,
                      validator: (value){
                        if(value.isEmpty)
                          {
                            return 'Invalid Name';
                          }
                        return null;
                      },
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 20.0),
                    child: TextFormField(
                      //maxLines: 2,
                      decoration: InputDecoration(
                        focusColor: Colors.purple[500],
                        labelText: 'Email',
                        labelStyle: TextStyle(
                            color: Colors.purple[200]
                        ),
                        icon: Icon(
                          Icons.description,
                          color: Colors.deepPurple,
                        )
                      ),
                      cursorHeight: 25.0,
                      validator: (value){
                        if(value.isEmpty)
                        {
                          return 'Invalid Email';
                        }
                        return null;
                      },
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 20.0),
                    child: TextFormField(
                      obscureText: true,
                      controller: _passwordController,
                      decoration: InputDecoration(
                        focusColor: Colors.purple[500],
                        labelText: 'Password',
                        labelStyle: TextStyle(
                            color: Colors.purple[200]
                        ),
                          icon: Icon(
                            Icons.vpn_key_sharp,
                            color: Colors.deepPurple,
                          ),
                      ),
                      cursorHeight: 25.0,
                      validator: (value){
                        if(value.isEmpty)
                        {
                          return 'Invalid Password';
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
                        labelText: 'Confirm Password',
                        labelStyle: TextStyle(
                            color: Colors.purple[200]
                        ),
                        icon: Icon(
                          Icons.vpn_key_sharp,
                          color: Colors.deepPurple,
                        ),
                      ),
                      cursorHeight: 25.0,
                      validator: (value){
                        if(value.isEmpty || value != _passwordController.text )
                        {
                          return 'Invalid Password';
                        }
                        return null;
                      },
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
                      press: (){
                        _submit();
                      },
                    ),
                  )
                ],
              ),
            )
        ),
      ),

    );
  }
}
