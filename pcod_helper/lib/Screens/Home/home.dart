import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pcod_helper/Screens/Home/profile.dart';
import 'package:pcod_helper/Screens/Home/test.dart';
import 'package:pcod_helper/Screens/fitness_screen.dart';
import 'package:pcod_helper/Services/auth.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Auth _auth = new Auth();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Home",
            style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold)),
        actions: [
          FlatButton.icon(
            label: Text("SignOut",),
            icon: Icon(Icons.person),
            onPressed: () async {
              await _auth.SignOut();
            },

          )
        ],
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("Images/backgroundColor.PNG",),
                  fit: BoxFit.cover
                )
              ),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height /3,
              child: Image.asset("Images/homeImage.PNG", fit: BoxFit.contain,),
            ),
          SizedBox(height: 20,),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Card(
                        child: RaisedButton(
                          elevation: 10,
                          color: Colors.white,
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Test()),
                            );
                          },
                          child: Container(

                            width:  MediaQuery.of(context).size.width/3,
                            height: MediaQuery.of(context).size.height/4,
                              child: Image.asset("Images/test.PNG", fit: BoxFit.contain,)
                          ),
                        ),
                      ),
                      Card(
                        
                        child: RaisedButton(
                          elevation: 10,
                          color: Colors.white,
                          onPressed: (){},
                          child: Container(
                            width:  MediaQuery.of(context).size.width/3,
                            height: MediaQuery.of(context).size.height/4,
                              child: Image.asset("Images/about.png", fit: BoxFit.contain,)
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Card(
                        elevation: 10,
                        child: RaisedButton(
                          color: Colors.white,
                          elevation: 10,
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Fitness()),
                            );
                          },
                          child: Container(
                            width:  MediaQuery.of(context).size.width * 1/3,
                            height: MediaQuery.of(context).size.height/4,
                            child: Image.asset("Images/fitness.PNG", fit: BoxFit.contain,),
                          ),
                        ),
                      ),
                      Card(
                        elevation: 10,
                        child: RaisedButton(
                        color: Colors.white,
                        onPressed: (){},
                        child: Container(
                            width:  MediaQuery.of(context).size.width * 1/3,
                            height: MediaQuery.of(context).size.height/4,
                          child: Image.asset("Images/tracker.png", fit: BoxFit.contain,),
                        ),
                      ),),
                    ],
                  ),
                ],
              ),
            )
          ),
          RaisedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Profile()),
              );
            },
          )
        ],
      )
    );
  }
}
