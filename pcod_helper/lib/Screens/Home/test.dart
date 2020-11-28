
import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  int periods;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          AspectRatio(
            aspectRatio: 16/9,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("Images/backgroundColor.PNG",),
                      fit: BoxFit.cover
                  )
              ),
              width: MediaQuery.of(context).size.width,
              child: Image.asset("Images/test1.PNG"),
            ),
          ),
          SizedBox(height: 20,),
          Card(
            elevation: 10,
            child: Row(
              children: [
                Container(color: Colors.pink,
                  width: MediaQuery.of(context).size.width * 0.5/3,
                  height: MediaQuery.of(context).size.height/3,
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  width: MediaQuery.of(context).size.width * 2.3/3,
                  height: MediaQuery.of(context).size.height/3,
                  child: Column(
                    children: [
                      Text("How many periods you had in past one year ?",
                        style: TextStyle(
                            fontSize: 20),),
                      SizedBox(height: 80,),
                      TextFormField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey[100],
                        ),

                      )
                    ],
                  )
                ),
              ],
            )
          ),
          Card(
              elevation: 10,
              child: Row(
                children: [
                  Container(color: Colors.pink,
                    width: MediaQuery.of(context).size.width * 0.5/3,
                    height: MediaQuery.of(context).size.height/3,
                  ),
                  Container(
                      padding: EdgeInsets.all(5),
                      width: MediaQuery.of(context).size.width * 2.3/3,
                      height: MediaQuery.of(context).size.height/3,
                      child: Column(
                        children: [
                          Text("Are you facing accesive acne ?",
                            style: TextStyle(
                                fontSize: 20),),
                          SizedBox(height: 80,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              RaisedButton(
                                child: Text("Yes"),
                                onPressed: (){},
                                color: Colors.pink,
                              ),
                              RaisedButton(
                                child: Text("No"),
                                onPressed: (){},
                                color: Colors.pink,
                              ),
                            ],
                          )
                        ],
                      )
                  ),
                ],
              )
          ),
          Card(
              elevation: 10,
              child: Row(
                children: [
                  Container(color: Colors.pink,
                    width: MediaQuery.of(context).size.width * 0.5/3,
                    height: MediaQuery.of(context).size.height/3,
                  ),
                  Container(
                      padding: EdgeInsets.all(5),
                      width: MediaQuery.of(context).size.width * 2.3/3,
                      height: MediaQuery.of(context).size.height/3,
                      child: Column(
                        children: [
                          Text("Are you facing heavy bleeding ?",
                            style: TextStyle(
                                fontSize: 20),),
                          SizedBox(height: 80,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              RaisedButton(
                                child: Text("Yes"),
                                onPressed: (){},
                                color: Colors.pink,
                              ),
                              RaisedButton(
                                child: Text("No"),
                                onPressed: (){},
                                color: Colors.pink,
                              ),
                            ],
                          )
                        ],
                      )
                  ),
                ],
              )
          ),
          Card(
              elevation: 10,
              child: Row(
                children: [
                  Container(color: Colors.pink,
                    width: MediaQuery.of(context).size.width * 0.5/3,
                    height: MediaQuery.of(context).size.height/3,
                  ),
                  Container(
                      padding: EdgeInsets.all(5),
                      width: MediaQuery.of(context).size.width * 2.3/3,
                      height: MediaQuery.of(context).size.height/3,
                      child: Column(
                        children: [
                          Text("Is there pigmentation on your skin ?",
                            style: TextStyle(
                                fontSize: 20),),
                          SizedBox(height: 80,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              RaisedButton(
                                child: Text("Yes"),
                                onPressed: (){},
                                color: Colors.pink,
                              ),
                              RaisedButton(
                                child: Text("No"),
                                onPressed: (){},
                                color: Colors.pink,
                              ),
                            ],
                          )
                        ],
                      )
                  ),
                ],
              )
          ),
          Card(
              elevation: 10,
              child: Row(
                children: [
                  Container(color: Colors.pink,
                    width: MediaQuery.of(context).size.width * 0.5/3,
                    height: MediaQuery.of(context).size.height/3,
                  ),
                  Container(
                      padding: EdgeInsets.all(5),
                      width: MediaQuery.of(context).size.width * 2.3/3,
                      height: MediaQuery.of(context).size.height/3,
                      child: Column(
                        children: [
                          Text("Are you facing baldness ?",
                            style: TextStyle(
                                fontSize: 20),),
                          SizedBox(height: 80,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              RaisedButton(
                                child: Text("Yes"),
                                onPressed: (){},
                                color: Colors.pink,
                              ),
                              RaisedButton(
                                child: Text("No"),
                                onPressed: (){},
                                color: Colors.pink,
                              ),
                            ],
                          )
                        ],
                      )
                  ),
                ],
              )
          ),


          RaisedButton(
            onPressed: (){},
          )

        ],
      ),
    );
  }
}
