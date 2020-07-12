import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Main_stful('Ooh'),
    );
  }
}

class Main_stful extends StatefulWidget {
  final String title;
  Main_stful(this.title);

  @override
  _Main_stfulState createState() => _Main_stfulState();
}

class _Main_stfulState extends State<Main_stful> {
  int _message = 2;

  @override
  Widget build(BuildContext context) {
    //return Container();
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => setState(() => _message *= 2)
      ),
        appBar: AppBar(
          title : Text(widget.title)
        ),
        body: Text(_message.toString()));
  }
}
