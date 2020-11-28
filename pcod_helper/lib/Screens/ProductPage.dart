
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constants.dart';

class ProductPage extends StatefulWidget {
  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    String selectedImg;
    String selectTitle;
    String selectText;
    final Map arguments = ModalRoute.of(context).settings.arguments as Map;
    selectedImg = arguments['image'];
    selectTitle = arguments['title'];
    selectText = arguments['text'];
    return Scaffold(
      backgroundColor: Color(0xfff8f8f8),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: (){Navigator.pop(context);},
          icon: Icon(Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height*0.43,
            width: MediaQuery.of(context).size.width,
            color: kTheme,
            child: Container(
              margin: EdgeInsets.only(right: 40, top: 20, bottom: 20),
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('asset/path.png'),
                      fit: BoxFit.contain
                  )
              ),
            ),
          ),
          Column(
            children: <Widget>[
              SizedBox(height: 90,),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: Text('$selectTitle', style: kTitleStyle),
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(left: 20),
                              width: MediaQuery.of(context).size.width*0.7,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('Do Everyday for  10-15 min', style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w600
                                  ),),
                                  SizedBox(height: 10,),
                                  Text('Live happier and healthier  ', style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600
                                  ),),
                                  SizedBox(height: 10,),
                                  Container(
                                    width: MediaQuery.of(context).size.width*0.9,
                                    margin: EdgeInsets.only(right: 20),
                                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.all(70),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('assets/$selectedImg.jpg'),
                                        fit: BoxFit.contain
                                    )
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 5,),

                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          child: Text('Benefits', style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w700
                          ),),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          //margin: EdgeInsets.symmetric(horizontal: 20),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              color: Colors.white,
                              boxShadow: [BoxShadow(
                                  color: Colors.black.withOpacity(0.15),
                                  blurRadius: 15,
                                  spreadRadius: 1
                              )]
                          ),
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: MediaQuery.of(context).size.width * 2.8/3,
                                height: 200,
                                padding: EdgeInsets.all(50),
                                child: Text('$selectText'),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 30,)
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        FaIcon(FontAwesomeIcons.calendar),
                        Text('Today')
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        FaIcon(FontAwesomeIcons.dumbbell, color: Colors.orange,),
                        Text('All Exercise', style: TextStyle(
                            color: Colors.orange,
                            fontWeight: FontWeight.w700,
                            fontSize: 20
                        ),)
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.settings),
                        Text('Settings')
                      ],
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}