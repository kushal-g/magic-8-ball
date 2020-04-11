import 'package:flutter/material.dart';
import 'dart:math';
void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );


class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  
  int imageNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title:Text("Ask me anything"),
        backgroundColor: Colors.black,
      ),
      body:Center(
        child:Container(
          child:FlatButton(
            onPressed: (){
              this.setState((){
                imageNumber = Random().nextInt(5)+1;
              });
            },
            child:Image.asset('images/ball$imageNumber.png')
          )
      ))
    );
  }
}
