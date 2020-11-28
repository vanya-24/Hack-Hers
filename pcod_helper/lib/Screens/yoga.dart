import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'YOGA',
      theme: ThemeData.light(),
      home: Scaffold(
        body: SafeArea(
          child: MyHomePage(),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List menuList = [
    _MenuItem( 'Badhakonasana',AssetImage('assets/badha.jpg')),
    _MenuItem( 'Supta Badhakonasana',AssetImage('assets/supta.jpg')),
    _MenuItem( 'Bharadvajasana',AssetImage('assets/bharad.jpg')),
    _MenuItem( 'Bhujangasana',AssetImage('assets/bhujang.jpg')),
    _MenuItem( 'Naukasana',AssetImage('assets/nauka.jpg')),
    _MenuItem( 'Dhanurasana',AssetImage('assets/dhanur.jpg')),
    _MenuItem( 'Viparita Shalabhasana',AssetImage('assets/viparita.jpg')),
    _MenuItem( 'Balasana',AssetImage('assets/bala.jpg')),
    _MenuItem( 'Chakki Chalanasana',AssetImage('assets/chakki.jpg')),
    _MenuItem( 'Marjaryasana and Bitilasana',AssetImage('assets/cat.jpg')),
    _MenuItem( 'Prasarita Padottanasana',AssetImage('assets/prasarita.jpg')),
    _MenuItem( 'Padmasana',AssetImage('assets/padma.jpg')),
    _MenuItem( 'Nispanda Bhava',AssetImage('assets/nish.jpg')),
    _MenuItem( 'Shavasana',AssetImage('assets/shava.jpg')),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Yoga'),
        backgroundColor: Colors.pink,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.track_changes),
            title: new Text('Tracker'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.person),
            title: new Text('Profile'),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, position) {
            return InkWell(
                onTap: () {},
                child: Center(
                  child: Column(
                    children: [
                      Center(
                        child: Card(
                          color: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0)),
                          elevation: 5,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image(
                              image: menuList[position].images,
                              height:100.0,
                              width:100.0,
                              // size: 50,
                              // color: Colors.pinkAccent,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            menuList[position].title,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 9.0,  //change to 20.0,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ));
          },
          itemCount: menuList.length,
        ),
      ),
    );
  }
}

class _MenuItem {
  final String title;
  final AssetImage images;

  _MenuItem(this.title,this.images);
}