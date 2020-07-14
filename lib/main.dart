import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class Ball extends StatefulWidget {

  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber=1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: FlatButton(
          onPressed: (){
            setState(() {
              ballNumber=Random().nextInt(5)+1;
            });

            print('Button Pressed.$ballNumber');
          },
          child: Image.asset('images/ball$ballNumber.png'),

        ),
      ),
    );
  }
}

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Scaffold(
          backgroundColor: Colors.lightBlue.shade700,
          appBar: AppBar(
            title: Text('Ask Me Anything'),
            backgroundColor: Colors.lightBlue.shade900,
          ),
          body: Ball(),
        ),
      ),
    );
  }
}
