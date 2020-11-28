import 'package:flutter/material.dart';
import 'package:pcod_helper/Screens/Authentication/SignIn.dart';
import 'package:pcod_helper/Screens/wrapper.dart';
import 'package:pcod_helper/Services/auth.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider.value(
        value: Auth().user,
        child : MaterialApp(
          home: Wrapper(),
        )
    );
  }
}


