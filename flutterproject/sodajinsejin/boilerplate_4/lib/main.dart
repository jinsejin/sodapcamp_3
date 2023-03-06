import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
          backgroundColor: const Color(0xff182949),
          title: const Text(
            'SODA',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.notifications),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.share),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            )
          ]),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xff182949),
              ),
              child: Text(
                'SODA',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            ListTile(
              leading: Togsystem(),
              title: Text('Icon favorite'),
            ),
          ],
        ),
      ),
      body: Column(
        children: const [
          Homeincard(),
          Chipsundercard(),
        ],
      ),
      floatingActionButton: const Floatingactionbutton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      bottomSheet: const SizedBox(
        height: 60,
        child: Bottomsheethome(),
      ),
    );
  }
}

class Bottomsheethome extends StatefulWidget {
  const Bottomsheethome({super.key});

  @override
  State<Bottomsheethome> createState() => _BottomsheethomeState();
}

class _BottomsheethomeState extends State<Bottomsheethome> {
  static const TextStyle lightoptionStyle =
      TextStyle(fontSize: 14, color: Color.fromARGB(255, 172, 171, 171));
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: const [
        Divider(
          height: 25,
          indent: 13,
          endIndent: 14,
          thickness: 2,
          color: Color(0xFF838383),
        ),
        Text(
          "Copyright 2022 SODA All right reserved.",
          style: lightoptionStyle,
        ),
      ],
    );
  }
}

class Togsystem extends StatefulWidget {
  // 누르면 아이콘이 변하게 하기 위한 class를 만들었다.
  const Togsystem({super.key});

  @override
  State<Togsystem> createState() => _TogsystemState();
}

class _TogsystemState extends State<Togsystem> {
  bool _isFavorited = true; // _isFavorited이 false면 favorite 아이콘 아니면 테두리만 남음
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(0),
          child: IconButton(
            padding: const EdgeInsets.all(0),
            alignment: Alignment.centerRight,
            icon: (_isFavorited
                ? const Icon(
                    Icons.favorite,
                  )
                : const Icon(
                    Icons.favorite,
                    color: Color(0xff4B6EB1),
                  )),
            onPressed: _toggleFavorite,
          ),
        ),
      ],
    );
  }

  void _toggleFavorite() {
    // toggle 작용을 위한 함수!!
    setState(() {
      if (_isFavorited) {
        _isFavorited = false;
      } else {
        _isFavorited = true;
      }
    });
  }
}

//Homepage의 body에 있는 상단 부분의 text와 카드를 추가한 기능이다.
class Homeincard extends StatefulWidget {
  const Homeincard({super.key});

  @override
  State<Homeincard> createState() => _HomeincardState();
}

class _HomeincardState extends State<Homeincard> {
  static const TextStyle boldoptionstyle =
      TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black);
  static const TextStyle lightoptionStyle =
      TextStyle(fontSize: 14, color: Color.fromARGB(255, 172, 171, 171));
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(14, 11, 0, 5),
          child: const Text(
            "DAY 8",
            style: boldoptionstyle,
          ),
        ),
        cardclass,
      ],
    );
  }

  Widget cardclass = Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: const BorderSide(color: Color(0xFFCDCCCC)),
      ),
      child: Column(
        children: [
          const ListTile(
            isThreeLine: true,
            title: Text("Boilerplate 4\n", style: boldoptionstyle),
            subtitle: Text(
              "어느 덧 SODA 캠프 8일차가 되었네요!\n 여기까지 달려오느라 수고 많으셨어요 :) \n\n아래에 있는 CANCLE과 SUBMIT은 버튼 입니다.",
              style: lightoptionStyle,
            ),
          ),
          SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: (() {}),
                  child: const Text(
                    "CANCLE",
                  ),
                ),
                TextButton(
                  onPressed: (() {}),
                  child: const Text(
                    "CANCLE",
                  ),
                ),
              ],
            ),
          )
        ],
      ));
}

//chip기능 넣기
class Chipsundercard extends StatefulWidget {
  const Chipsundercard({super.key});

  @override
  State<Chipsundercard> createState() => _ChipsundercardState();
}

class _ChipsundercardState extends State<Chipsundercard> {
  int _selectedIndex = 0;
  final List<String> _choiceChipsList = [
    "SODA",
    "CAMP",
    "FUN",
    "FLUTTER",
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Wrap(
            spacing: 4,
            direction: Axis.horizontal,
            children: choiceChips(),
          ),
        ],
      ),
    );
  }

  List<Widget> choiceChips() {
    List<Widget> chips = [];
    for (int i = 0; i < _choiceChipsList.length; i++) {
      Widget item = Padding(
        padding: const EdgeInsets.only(left: 5, right: 5),
        child: ChoiceChip(
          label: Text(_choiceChipsList[i]),
          labelStyle: TextStyle(
              color: _selectedIndex == i ? Colors.white : Colors.black),
          selected: _selectedIndex == i,
          selectedColor: const Color(0xff182949),
          onSelected: (bool value) {
            setState(() {
              _selectedIndex = i;
            });
          },
        ),
      );
      chips.add(item);
    }
    return chips;
  }
}

// tooltip있는 floatingactionbutton
class Floatingactionbutton extends StatefulWidget {
  const Floatingactionbutton({super.key});

  @override
  State<Floatingactionbutton> createState() => _FloatingactionbuttonState();
}

class _FloatingactionbuttonState extends State<Floatingactionbutton> {
  @override
  Widget build(BuildContext context) {
    return Tooltip(
      textAlign: TextAlign.center,
      preferBelow: false,
      message: 'I am a Tooltip',
      showDuration: const Duration(milliseconds: 3000),
      child: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromARGB(255, 7, 54, 93),
        child: const Icon(Icons.add),
      ),
    );
  }
}
