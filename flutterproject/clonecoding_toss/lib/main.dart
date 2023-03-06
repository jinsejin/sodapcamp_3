import 'package:flutter/material.dart';
import 'homepageparts.dart';
import 'gridviewpage.dart';

// list 변수 선언

const TextStyle accionicon1 =
    TextStyle(color: Color(0xFFEDEBEB), fontFamily: 'Pretexdard', fontSize: 12);
const Positioned textpositioninicon1 = Positioned(
  top: 15,
  right: 20,
  child: Text('9+', style: accionicon1),
);
List bodyinhomepage = [
  const Bodylistview(),
  const Bodylistview(),
  const Gridviewpages(),
  const Bodylistview(),
  const Bodylistview(),
];

const List<ImageIcon> imagebottomnavigation = [
  ImageIcon(AssetImage('assets/images/Vector.png')),
  ImageIcon(AssetImage('assets/images/Vector 1.png')),
  ImageIcon(AssetImage('assets/images/songgum.png')),
  ImageIcon(AssetImage('assets/images/Vector 2.png')),
  ImageIcon(AssetImage('assets/images/Group 1.png')),
];
final List<BottomNavigationBarItem> bottomnavigationicon = [
  BottomNavigationBarItem(
    icon: imagebottomnavigation[0],
    label: '홈',
  ),
  BottomNavigationBarItem(
    icon: imagebottomnavigation[1],
    label: '혜택',
  ),
  BottomNavigationBarItem(
    icon: imagebottomnavigation[2],
    label: '송금',
  ),
  BottomNavigationBarItem(
    icon: imagebottomnavigation[3],
    label: '주식',
  ),
  BottomNavigationBarItem(
    icon: imagebottomnavigation[4],
    label: '전체',
  ),
];

//homepageparts.dart lib를 추가
//bottomnavigationbar.dart lib를 추가
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var appbarclass2 = appbarclass;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Pretendard'),
      home: Scaffold(
        appBar: _selectedIndex != 2 ? appbarclass2 : null,
        body: bodyinhomepage[_selectedIndex],
        backgroundColor: const Color(0xffF2F4F6),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            for (int i = 0; i < bottomnavigationicon.length; i++)
              bottomnavigationicon[i],
          ],
          currentIndex: _selectedIndex,
          unselectedItemColor: const Color(0xFFADAFB2),
          selectedItemColor: const Color(0xff000000),
          onTap: _onItemTapped,
        ),
      ),
    );
  }

  PreferredSizeWidget appbarclass = AppBar(
    backgroundColor: const Color(0xffF2F4F6),
    elevation: 0,
    title: Image.asset(
      'assets/images/toss.png',
      width: 100,
    ),
    actions: [
      Stack(
        alignment: const Alignment(0, 0),
        children: [
          TextButton(
            onPressed: () {},
            child: Image.asset('assets/images/actionicon1.png'),
          ),
          textpositioninicon1,
        ],
      ),
      TextButton(
        onPressed: () {},
        child: Image.asset('assets/images/actionicon2.png'),
      ),
    ],
  );
}
