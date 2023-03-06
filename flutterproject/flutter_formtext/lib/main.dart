import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '교환일기',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: const Textfieldindiray());
  }
}

class Textfieldindiray extends StatefulWidget {
  const Textfieldindiray({super.key});
  @override
  State<Textfieldindiray> createState() => _TextfieldindirayState();
}

class _TextfieldindirayState extends State<Textfieldindiray> {
  String _textformvalue = "";
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Form(
          key: _formkey,
          child: TextFormField(
            validator: (value) {
              if (value!.isEmpty) {
                return '1자 이상입력해주세요.';
              }
            },
            onSaved: (newValue) {
              setState(() {
                _textformvalue = newValue!;
              });
            },
          ),
        ),
        ElevatedButton(
          onPressed: () {
            final formKeyState = _formkey.currentState!;
            if (formKeyState.validate()) {
              formKeyState.save();
            }
          },
          child: const Text('확인'),
        ),
        Text(_textformvalue),
      ],
    );
  }
}
