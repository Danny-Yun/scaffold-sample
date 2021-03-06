import 'package:flutter/material.dart';
import 'package:flutter/src/material/bottom_navigation_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scaffold Sample',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: ScaffoldSample(),
    );
  }
}

class ScaffoldSample extends StatefulWidget {
  const ScaffoldSample({Key? key}) : super(key: key);

  @override
  _ScaffoldSampleState createState() => _ScaffoldSampleState();
}

class _ScaffoldSampleState extends State<ScaffoldSample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scaffold 기본 예제'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Contents'),
          TextFormField(
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(25),
                ),
              ),
            ),
          ),
        ],
      ),

      // Drawer 메뉴 생성
      drawer: Drawer(
        child: Center(
          child: Text('슬라이드 메뉴'),
        ),
      ),
      // 버튼을 누르지 않아도 슬라이드로 메뉴를 가지고 올 수 있는 영역을 지정
      drawerEdgeDragWidth: 100,
      // 위 기능을 사용할 수 없게 홀드
      drawerEnableOpenDragGesture: false,
      // endDrawerEnableOpenDragGesture: false,
      // 앞에 end가 추가되면 오른쪽에 위치시킬 수 있음
      endDrawer: Drawer(
        child: Center(
          child: Text('슬라이드 메뉴'),
        ),
      ),

      // 텍스트 폼을 눌러서 키보드가 올라올 때 플로팅 버튼이 같이 올라오지 않게 하기 위해서 사용
      resizeToAvoidBottomInset: false,

      // floating 버튼 생성
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('click edit button');
        },
        child: Icon(Icons.edit),
        backgroundColor: Colors.cyan,
      ),

      // 아래 쪽에 내비게이션바 생성
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: (index) {
          print(index);
        },
        backgroundColor: Colors.orange[50],
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.mail), label: 'Messages'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
