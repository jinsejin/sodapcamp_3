import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:sodaproject/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
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
      body: Column(
        children: [
          const TextFieldExample(),
          const Divider(),
          Text(DataProvider.myNameInFireStore ?? "no data yet"),
          const Text("added user-info"),
          StreamBuilder(
            stream: FirebaseProvider.getAllInfos(),
            builder: (context, snapshot) {
              switch (snapshot.connectionState) {
                case ConnectionState.waiting:
                case ConnectionState.active:
                  if (snapshot.data == null) {
                    return const Text("no data");
                  }
                  return ListView.builder(
                    shrinkWrap: true,
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      return Text(
                          snapshot.data!.toList()[index].myName ?? "no name");
                    },
                  );
                default:
                  return const CircularProgressIndicator();
              }
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final docRef =
              await FirebaseFirestore.instance.collection("my-info").add({
            registerTimeFieldName: FieldValue.serverTimestamp(),
            "my-name": DataProvider.myName,
          });
          final docSnapshot = await docRef.get();
          if (docSnapshot.data() == null) {
            return;
          }
          final snapshotData = docSnapshot.data()!;

          DataProvider.myNameInFireStore = snapshotData["my-name"];
        },
        child: Text("add"),
      ),
    );
  }
}

class TextFieldExample extends StatefulWidget {
  const TextFieldExample({super.key});

  @override
  State<TextFieldExample> createState() => _TextFieldExampleState();
}

class _TextFieldExampleState extends State<TextFieldExample> {
  late final TextEditingController _nameTextEditingController;

  @override
  void initState() {
    super.initState();
    _nameTextEditingController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _nameTextEditingController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("enter your name"),
          TextField(
            controller: _nameTextEditingController,
            onChanged: (value) {
              setState(() {
                DataProvider.myName = value;
              });
            },
          ),
          Text(DataProvider.myName ?? "no name yet"),
        ],
      ),
    );
  }
}

class DataProvider {
  static String? myName;
  static String? myNameInFireStore;
}

class FirebaseProvider {
  static final myInfoCollection =
      FirebaseFirestore.instance.collection("my-info");

  static Stream<Iterable<MyInfo>> getAllInfos() {
    return myInfoCollection.snapshots().map((snapshot) =>
        snapshot.docs.map((docSnap) => MyInfo.fromFirebase(docSnap)));
  }
}

class MyInfo {
  final String? myName;
  final int? age;
  final bool? hasGF;
  final List<int>? grades;
  final Timestamp? registerTime;

  MyInfo(
      {required this.myName,
      required this.age,
      required this.hasGF,
      required this.grades,
      required this.registerTime});

  factory MyInfo.fromFirebase(
      QueryDocumentSnapshot<Map<String, dynamic>> docSnap) {
    final snapshotData = docSnap.data();
    return MyInfo(
      registerTime: snapshotData[registerTimeFieldName],
      age: snapshotData[ageFieldName],
      grades: snapshotData[gradesFieldName],
      hasGF: snapshotData[hasGFFieldName],
      myName: snapshotData[myNameFieldName],
    );
  }
}

const String myNameFieldName = "my-name";
const String ageFieldName = "my-age";
const String hasGFFieldName = "has-gf";
const String gradesFieldName = "grades";
const String registerTimeFieldName = "register-time";
