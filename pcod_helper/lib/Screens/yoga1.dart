import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'ProductPage.dart';
import '../constants.dart';
import 'yoga1.dart';
void main(){
  runApp(Yoga());
}
class Yoga extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'Avenir'
      ),
      home: YogaPage(),
      routes: {
        '/productPage' : (context)=>ProductPage(),
      },
    );
  }
}
class YogaPage extends StatefulWidget {
  @override
  _YogaPageState createState() => _YogaPageState();
}

class _YogaPageState extends State<YogaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: (){Navigator.of(context).pop();},
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.black,
        ),
      ),
      body: Stack(
        children: <Widget>[
          Column(
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
                          image: AssetImage('asset/path.jpg'),
                          fit: BoxFit.contain
                      )
                  ),
                ),
              )
            ],
          ),
          Column(
            children: <Widget>[
              SizedBox(height: 100,),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.all(20),
                child: Text("Yoga", style: kTitleStyle),
              ),
              Container(
                width: MediaQuery.of(context).size.width*0.9,
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(40))
                ),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.search,
                      size: 30,),
                    SizedBox(width: 20,),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Search',
                            hintStyle: TextStyle(
                                fontSize: 20
                            )
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Expanded(
                child: GridView.count(crossAxisCount: 2,
                  childAspectRatio: 0.85,
                  children: <Widget>[
                    categoryWidget('badha', "Badhakonasana",kBadha),
                    categoryWidget('supta', "Supta Badhakonasana",kSupta),
                    categoryWidget('bharad', "Bharadvajasana",kBharad),
                    categoryWidget('bhujang', "Bhujangasana",kBhujang),
                    categoryWidget('nauka', "Naukasana",kNauka),
                    categoryWidget('dhanur', "Dhanurasana",kDhanur),
                    categoryWidget('viparita', "Viparita Shalabhasana",kViparita),
                    categoryWidget('bala', "Balasana",kBala),
                    categoryWidget('chakki', "Chakki Chalanasana",kChakki),
                    categoryWidget('cat', "Marjaryasana and Bitilasana",kCat),
                    categoryWidget('prasarita', "Prasarita Padottanasana",kPrasarita),
                    categoryWidget('padma', "Padmasana",kPadma),
                    categoryWidget('nish', "Nispanda Bhava",kNish),
                    categoryWidget('shava', "Shavasana",kShava),
                  ],
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
  Container categoryWidget(String img, String title,String text)
  {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
      width: MediaQuery.of(context).size.width*0.3,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(30)),
          boxShadow: [BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 20,
            spreadRadius: 1,
            offset: Offset(0,10),
          )]
      ),
      child: InkWell(
        onTap: (){openProductPage('$img', '$title','$text');},
        child: Column(
          children: <Widget>[
            SizedBox(height: 20,),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/$img.jpg'),
                        fit: BoxFit.contain
                    )
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.all(20),
              child: Text('$title', style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 10,)
          ],
        ),
      ),
    );
  }
  void openProductPage(String img, String title, String text)
  {
    Navigator.pushNamed(context, '/productPage', arguments: {'image':'$img', 'title':'$title', 'text':'$text'});
  }
}
