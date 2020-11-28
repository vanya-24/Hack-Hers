import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pcod_helper/Screens/Authentication/SignIn.dart';
import 'package:pcod_helper/Services/auth.dart';

class SignUp extends StatefulWidget {
  @override
  final Function toggle;
  SignUp({this.toggle});
  _SignUpState createState() => _SignUpState(toggle: toggle);
}

class _SignUpState extends State<SignUp> {
  final Auth _auth = Auth();
  final Function toggle;
  _SignUpState({this.toggle});
  final _formKey = GlobalKey<FormState>();
  String email;
  String password;
  String error;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SignUp",
        style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),),
        backgroundColor: Colors.white,

      ),
        backgroundColor: Colors.white,
        body: Container(
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 20),
                      Container(
                        height: MediaQuery.of(context).size.height* 1.1/ 3,
                        width:  MediaQuery.of(context).size.width * 2.1 /3,
                        child: Image.asset("Images/signup.png", fit:  BoxFit.fill,),
                      ),
                      SizedBox(height: 30,),
                      Container(
                        width: MediaQuery.of(context).size.width * 2.5 /3,
                        child: Material(
                          elevation: 5,
                          borderOnForeground: false,
                          child: TextFormField(
                            decoration: InputDecoration(
                              floatingLabelBehavior:  FloatingLabelBehavior.always,
                                labelText: "Email",
                                labelStyle: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold
                                ),
                                suffixIcon: Icon(Icons.email),
                                filled: true,
                                fillColor: Colors.white,
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white
                                    )
                                ),
                                hintText: 'email'),
                            validator: (val) => val.isEmpty ? "Enter an email" : null,
                            onChanged: (val){
                              setState(() {
                                email = val;
                              });

                            },
                          ),
                        ),
                      ),
                      SizedBox(height:  30,),
                      Container(
                        width: MediaQuery.of(context).size.width * 2.5 /3,
                        child: Material(
                          elevation: 5,
                          child: TextFormField(
                            decoration: InputDecoration(
                                labelText: "Password",
                                labelStyle: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold
                                ),
                                floatingLabelBehavior: FloatingLabelBehavior.always,
                                suffixIcon: Icon(Icons.lock),
                                filled: true,
                                fillColor: Colors.white,
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white
                                    )
                                ),
                                hintText: 'password'),
                            validator: (val) => val.length < 6 ? "Enter a strong password" : null,
                            obscureText: true,
                            onChanged: (val){
                              password = val;
                            },
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      SizedBox(
                        height: 45,
                        width: MediaQuery.of(context).size.width * 2.5 /3,
                        child: RaisedButton(
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.red)
                          ),
                          child: Text("Sign Up",
                          style:  TextStyle(
                            color:  Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16
                          ),),
                          onPressed: () async {
                            if(_formKey.currentState.validate()){
                              dynamic result = await _auth.registerWithEmail(email, password);
                              if(result == null){
                                setState(() {
                                  error = "Supply Valid Information";
                                });
                              }
                            }
                          },
                          color: Colors.pinkAccent,
                        ),
                      ),
                      SizedBox(height: 15,),
                      RaisedButton(
                        elevation: 0,
                        onPressed: (){widget.toggle();},
                        color: Colors.white,
                        child: Text("Already have an account? SignIn",
                        style: TextStyle(color: Colors.pink,
                          decoration: TextDecoration.underline
                        ),),
                      )

                    ],
                  ),
                )
              ),
            )
        )
    );
  }
}
