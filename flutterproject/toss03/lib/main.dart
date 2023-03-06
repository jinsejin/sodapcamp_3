import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.grey),
      home: Scaffold(
        appBar: appbarhome,
        body: SafeArea(
          child: ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(25),
                child: Container(
                  child: ListTile(
                    title: Padding(
                      padding: EdgeInsets.fromLTRB(5, 20, 0, 3),
                      child: Text(
                        "토스뱅크",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  width: 343,
                  height: 72, //72,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
              Card(
                child: Column(
                  children: [
                    for (int i = 0; i < 6; i++) ...{
                      money(textbank[i], textmoney[i], imagemoney[i], songeum),
                    }
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget appbarhome = AppBar(
    elevation: 0,
    centerTitle: false,
    title: Image.asset(
      "assets/images/tossappbar.png",
    ),
    backgroundColor: Colors.white,
    actions: [
      Row(
        children: [
          Stack(
            children: [
              IconButton(
                onPressed: () {},
                iconSize: 40,
                icon: Image.asset(
                  "assets/images/chat.png",
                ),
              ),
              Positioned(
                top: 15,
                right: 15,
                child: Container(
                  child: const Text(
                    '9+',
                    style: TextStyle(fontSize: 11),
                  ),
                ),
              ),
            ],
          ),
          IconButton(
              iconSize: 30,
              color: const Color(0xffB1B8C0),
              icon: const Icon(Icons.chat_bubble),
              onPressed: () {}),
        ],
      )
    ],
  );
}

List<String> imagemoney = [
  'assets/images/toss.png',
  'assets/images/uri.png',
  'assets/images/ibk.png',
  'assets/images/kakao.png',
  'assets/images/hana.png',
  'assets/images/uri.png',
  'assets/images/toss.png',
];
List<String> textbank = [
  '토스뱅크 통장',
  '우리뱅크월렛카카오통장' '\n' '(저축예금)',
  '보통예금(IBK평생한가족통장',
  '입출금통장',
  '영하나플러스 통장',
  '저축 우리청년희망 적금',
];
List<String> textmoney = [
  '16,735원',
  '74,000원',
  '0원',
  '0원',
  '12,210원',
  '2,500,000원',
  '16,735',
];

String songeum = 'assets/images/songeum.png';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

Widget money(String a, String b, String c, String d) {
  return ListTile(
    leading: Image.asset(c),
    title: Text(a),
    subtitle: Text(b),
    trailing: Image.asset(d),
  );
}
