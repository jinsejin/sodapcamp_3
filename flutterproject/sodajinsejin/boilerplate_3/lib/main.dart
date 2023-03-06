import 'package:flutter/material.dart';

// to do: appbar 만들기
// to do: listtitle 3개 만들기
// to do: icon
// to do:
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
  static const TextStyle boldoptionstyle =
      TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black);
  static const TextStyle lightoptionStyle =
      TextStyle(fontSize: 14, color: Color.fromARGB(255, 172, 171, 171));
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
          actions: const [
            SwitchExample(),
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
        children: [
          Textfieldhome(),
          Radiohome(),
          CheackBoxhome(),
          Datepickerhome(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            title: const Text(
              '+ 버튼을 누르셨습니다.',
              style: TextStyle(
                color: Color(0xff797979),
                fontSize: 16,
              ),
            ),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.pop(context, '확인'),
                child: const Text(
                  '확인',
                  style: TextStyle(
                    color: Color(0xFF000000),
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 7, 54, 93),
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
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

// appbar에 있는 switch widget
class SwitchExample extends StatefulWidget {
  const SwitchExample({super.key});

  @override
  State<SwitchExample> createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {
  bool light = false;
  @override
  Widget build(BuildContext context) {
    return Switch(
      // This bool value toggles the switch.
      value: light,
      overlayColor: overlayColor,
      trackColor: trackColor,
      thumbColor: const MaterialStatePropertyAll<Color>(Colors.white),
      onChanged: (bool value) {
        // This is called when the user toggles the switch.
        setState(
          () {
            light = value;
            if (value == true) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  duration: const Duration(milliseconds: 2000),
                  content: const Text('Switch를 ON 하였습니다.'),
                  action: SnackBarAction(
                    label: 'OK',
                    textColor: Colors.red,
                    onPressed: () {
                      // Code to execute.
                    },
                  ),
                ),
              );
            } else {
              ScaffoldMessenger.of(context).hideCurrentSnackBar();
            }
          },
        );
      },
    );
  }

  static final MaterialStateProperty<Color?> trackColor =
      MaterialStateProperty.resolveWith<Color?>(
    (Set<MaterialState> states) {
      // Track color when the switch is selected.
      if (states.contains(MaterialState.selected)) {
        return Colors.blue;
      }
      // Otherwise return null to set default track color
      // for remaining states such as when the switch is
      // hovered, focused, or disabled.
      return null;
    },
  );
  static final MaterialStateProperty<Color?> overlayColor =
      MaterialStateProperty.resolveWith<Color?>(
    (Set<MaterialState> states) {
      // Material color when switch is selected.
      if (states.contains(MaterialState.selected)) {
        return Colors.blue.withOpacity(0.54);
      }
      // Material color when switch is disabled.
      if (states.contains(MaterialState.disabled)) {
        return const Color(0xff797979);
      }
      // Otherwise return null to set default material color
      // for remaining states such as when the switch is
      // hovered, or focused.
      return null;
    },
  );
}

//검색창 만들기!
class Textfieldhome extends StatefulWidget {
  const Textfieldhome({super.key});

  @override
  State<Textfieldhome> createState() => _TextfieldhomeState();
}

class _TextfieldhomeState extends State<Textfieldhome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 29, 24, 5),
      child: const TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xFFEDEDED),
          enabledBorder: UnderlineInputBorder(borderSide: BorderSide.none),
          labelText: 'Name',
          labelStyle:
              TextStyle(color: Color(0xFF182949), fontStyle: FontStyle.normal),
        ),
      ),
    );
  }
}

//cheack box 만들기
class CheackBoxhome extends StatefulWidget {
  const CheackBoxhome({super.key});

  @override
  State<CheackBoxhome> createState() => _CheackBoxhomeState();
}

class _CheackBoxhomeState extends State<CheackBoxhome> {
  bool isCheckdevlop = false;
  bool isCheckdesign = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          const SizedBox(width: 11),
          Checkbox(
            checkColor: Colors.white,
            value: isCheckdevlop,
            onChanged: (bool? value) {
              setState(() {
                isCheckdevlop = value!;
              });
            },
          ),
          const Text("Devolper"),
          const SizedBox(width: 64),
          Checkbox(
            checkColor: Colors.white,
            value: isCheckdesign,
            onChanged: (bool? value) {
              setState(() {
                isCheckdesign = value!;
              });
            },
          ),
          const Text("Designer"),
        ],
      ),
    );
  }
}

//Radio버튼 만들기
class Radiohome extends StatefulWidget {
  const Radiohome({super.key});

  @override
  State<Radiohome> createState() => _RadiohomeState();
}

enum SexCharacter { male, female }

class _RadiohomeState extends State<Radiohome> {
  SexCharacter? _character = SexCharacter.male;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: <Widget>[
          const SizedBox(
            width: 11,
          ),
          Radio(
            value: SexCharacter.male,
            groupValue: _character,
            onChanged: (SexCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
          const Text("Male"),
          const SizedBox(
            width: 64,
          ),
          Radio(
            value: SexCharacter.female,
            groupValue: _character,
            onChanged: (SexCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
          const Text("Female"),
        ],
      ),
    );
  }
}

//datepicker 만들기
class Datepickerhome extends StatefulWidget {
  const Datepickerhome({super.key});

  @override
  State<Datepickerhome> createState() => _DatepickerhomeState();
}

class _DatepickerhomeState extends State<Datepickerhome> {
  DateTime? _selectedDate;

  void _presentDatePicker() {
    // showDatePicker is a pre-made funtion of Flutter
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2020),
            lastDate: DateTime.now())
        .then(
      (pickedDate) {
        // Check if no date is selected
        if (pickedDate == null) {
          return;
        }
        setState(() {
          // using state so that the UI will be rerendered when date is picked
          _selectedDate = pickedDate;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: Row(
        children: [
          const SizedBox(width: 19),
          const Text("버튼을 눌러 날짜를 선택해주세요."),
          const SizedBox(width: 8),
          OutlinedButton(
            onPressed: _presentDatePicker,
            child: const Text(
              "SELECT DATE",
              style: TextStyle(
                color: Color(0xff4B6EB1),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
