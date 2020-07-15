import 'package:flutter/material.dart';

class ScreenB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ScreenB'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              color: Colors.pinkAccent,
              child: Text('Go to ScreenA'),
              onPressed: (){

              },),
            RaisedButton(
              color: Colors.pinkAccent,
              child: Text('Go to ScreenC'),
              onPressed: (){

              },),

          ],
        ),
      ),
    );
  }
}
