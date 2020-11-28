import 'package:flutter/material.dart';
import 'package:pcod_helper/Screens/Authentication/SignIn.dart';
import 'package:pcod_helper/Screens/Authentication/Signup.dart';

class Authentiacte extends StatefulWidget {
  @override
  _AuthentiacteState createState() => _AuthentiacteState();
}


class _AuthentiacteState extends State<Authentiacte> {
  @override
  bool showSignIn = false;
  void toggle(){
    setState(() {
      showSignIn = !showSignIn;
    });
  }
  Widget build(BuildContext context) {
    if(showSignIn){
      return SignIn(toggle: toggle,);
    }
    else{
      return SignUp(toggle: toggle,);
    }
  }
}
