import 'package:flutter/material.dart';
//import 'package:flutter_app/ScreenA.dart';
//import를 위처럼 안해도 되네??????????????
import 'ScreenA.dart';
import 'ScreenB.dart';
import 'ScreenC.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //### MaterialApp 을 보면, routes 와 initialRoute 아규먼트가 있는데,
      //    멀티페이지 만들 때 필요한 역할!
      //    initialRoute 는 멀티페이지 이동을 할 때 화면에 제일 처음 출력되는 route를 불러오는 역할을 함.
      //    (즉, home 아규먼트와 똑같은 역할을 하는 것.)
      //    따라서, home 대신에 initialRoute를 사용한다.
      //    따라서2, home과 initialRoute 는 동시에 존재할 수 없다.
      //### route 아규먼트는 이동할 페이지들의 이름을 지정하고 생성하는 역할. (Map자료형)

      //플러터 에서는 첫 route의 이름은 '/' 슬래쉬 이다.
      initialRoute : '/',
      routes: {
        '/' : (context) => ScreenA(),
        '/b' :(context) => ScreenB(),
        '/c' :(context) => ScreenC(),
      },
    );
  }
}











