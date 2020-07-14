/*
void main()
{
  int a=1, b=2;

  int i = plus(a);
  var s = () => ++a;
  var v = plus;

  print(plus(a));
  print(plus);
  print(plus(a).runtimeType);
  print(v);
  print(a);
  print(s);

}

int plus(int a)
{
  return ++a;
}

*/

/*
onPress 는 주로 버튼에 사용되고,
inTap 은 gestureDetector 또는 InkWell 에 대하여 사용됨. :: 두 번 탭하기, 길게누르기 등 '동작'
 */


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  //build : 위젯을 생성할 때 호출되는데, 실제로 화면에 그릴 위젯을 반환합니다.
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',  //실제 앱의 이름? Text위젯을 쓰지 않음.
      theme: ThemeData(

        primarySwatch: Colors.blue, //MyApp(메인앱) 에서는 색상이 한정되어 있는데,,?
        //materialApp 에서의 색상이 한정되어있다고 나옴.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Main_Stful('Ooh'),
    );
  }
}

class Main_Stful extends StatefulWidget {
  final String title;
  Main_Stful(this.title);

  @override
  _Main_StfulState createState() => _Main_StfulState();
}

class _Main_StfulState extends State<Main_Stful> {
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
        title : Text(widget.title),
        backgroundColor: Colors.red[200], //red 는 50단위가 없넹,,
        centerTitle: true,
//          leading: //앱바 좌측에 나타나는 형태. (리스트타일? 에서도 쓰임)
//            IconButton(icon: Icon(Icons.menu,), onPressed: null), //drawer 를 생성하면 자동으로 생성되기 때문에, 일단 지움.
        actions: //앱바 우측에 나타나는 형태
        <Widget>[
          IconButton(icon: Icon(Icons.notifications,), onPressed: null),
          IconButton(icon: Icon(Icons.search,), onPressed: null),
        ],
        elevation: 0.0, //위젯의 높이. 숫자가 클수록 앱바가 떠 있는 효과. (그림자로 효과주는듯)
      ),

      body:Center(  //이 센터랑 패딩이랑 같이 못쓰나..? 왜 안돼냐
        //  Padding( padding : EdgeInsets.fromLTRB(30, 40, 0, 0),
        child: Column(  //정렬하기 전에는, 위에 붙어 있어서, ali 까지 치면 main,cross aligment 이렇게 2개 나옴.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('2의 배수', style: TextStyle(fontSize: 30),),
            SizedBox(height: 30,),  //세로간격 위 아래 15px 씩 넓힘
            Text(_message.toString(), style: TextStyle(fontSize: 30),),
            MySnackBar(),
          ],
        ),
        //  ),
      ),

      //    )
      drawer: Drawer(
        child : ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.grey[350],
                child: Text('Admin'),
              ),
              otherAccountsPictures: <Widget>[    //다른계정.. 쓸 일이 있을까?
                CircleAvatar(
                  backgroundColor: Colors.deepPurpleAccent,
                  child: Text('other'),
                )
              ],
              accountName: Text('Lee Chan Woo'),        //@require
              accountEmail: Text('95.cksn@gmail.com'),  //@require
              onDetailsPressed: (){
                // 화살표를 눌렀을 때 적용 될 함수. ////////////////
              },
              decoration: BoxDecoration(
                  color: Colors.red[200],
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(35.0),
                      topRight: Radius.circular(35.0) //Drawer 큰 틀의 흰색 모서리는 어떻게 없앨까?
                  )
              ),
            ),
            ListTile(
              leading: Icon(Icons.home,
                  color: Colors.grey[850]
              ),
              title: Text('Home'),
              onTap: (){
                //탭 했을 경우 함수. 터치 효과까지 자동으로!
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(Icons.home,
                  color: Colors.grey[850]
              ),
              title: Text('Home'),
              onTap: (){
                //탭 했을 경우 함수. 터치 효과까지 자동으로!
              },
              trailing: Icon(Icons.add),
            )
          ],
        ),
      ),
    );
  }
}

class MySnackBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: (){
          Scaffold.of(context).showSnackBar(SnackBar(
            content: Text('This is SnackBar',
              textAlign: TextAlign.center,
              style: TextStyle( color:  Colors.white),
            ),
            backgroundColor: Colors.teal,
            duration: Duration(milliseconds: 1800),
          )
          );
        },
        child: Text('Flat btn',
          style: TextStyle(
              color: Colors.black87
          ),
        ),
        color: Colors.teal,
      ),
    );
  }
}


void flutterToast(){
  // 코딩셰프 19강  
  // 기능 삭제된듯..
  //Fluttertoast.
}
