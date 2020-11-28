import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
class ItemName extends StatelessWidget {
  ItemName({@required this.descript,@required this.heading});
  final String descript;
  final String heading;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width/3,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.0),
                child: Center(
                  child: Text(heading,
                    style: TextStyle(color: Colors.black,),
                  ),
                )
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Container(
              child: Text(
                descript,
                style: kDescriptionStyle,
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      )
    );
  }
}