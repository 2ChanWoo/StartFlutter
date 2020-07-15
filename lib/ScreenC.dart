import 'package:flutter/material.dart';

class ScreenC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ScreenC'),
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
              child: Text('Go to ScreenB'),
              onPressed: (){

              },),

          ],
        ),
      ),
    );
  }
}
