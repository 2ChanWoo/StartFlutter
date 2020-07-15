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
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Scaffold 위젯을 리턴하는 모든 커스텀 위젯 하나하나가 라우트(Route) 라고 볼 수 있다.
    return Scaffold(
      appBar: AppBar(
        title: Text('First page'),
      ),
      body: Center(
        child: RaisedButton(
            child: Text('Go to the Second page'),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(
                //아래에서, context를 사용하지 않기 때문에, (_) 를 대신 사용할 수 있다.
                //이유 : SecondPage 의 ctx FirstPage의 context와는 다르기 때문!
                //예시 : builder : (_) => SecondPage();
                  builder: (BuildContext context){
                    return SecondPage();
                  }));
            }),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second page'),
      ),
      body: Center(
        //stack 으로 쌓인 페이지는 플러터가 자동으로 뒤로가기 키를 만들어 주기 때문에,
        //굳이 pop을 만들지 않아도 된다. (--단, appbar가 존재해야한다.)
        child: RaisedButton(
            child: Text('Go to the First page'),
            onPressed: (){
              Navigator.pop(ctx);
            }),
      ),
    );
  }
}












