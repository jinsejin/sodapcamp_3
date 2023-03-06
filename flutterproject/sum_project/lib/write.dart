import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'main.dart';
import 'fontstyle.dart';

class Write extends StatelessWidget {
  const Write({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xff0A0028),
        appBar: AppBar(
          title: const Text(
            '진세진님의 교환일기',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 15, color: Colors.white),
          ),
          actions: [
            TextButton(
              onPressed: () {},
              child: Text(
                "보내기",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.pink.shade100),
              ),
            )
          ],
          centerTitle: true,
          elevation: 0.0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyHomePage()),
              );
            },
          ),
          backgroundColor: const Color(0xff0A0028),
        ),
        body: const WirttingDiarypage(),
      ),
    );
  }
}

class WirttingDiarypage extends StatefulWidget {
  const WirttingDiarypage({super.key});

  @override
  State<WirttingDiarypage> createState() => _WirttingDiarypageState();
}

class _WirttingDiarypageState extends State<WirttingDiarypage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: const [
        TextField(
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.center,
          decoration: InputDecoration(
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              hintText: '제목을 입력하세요',
              hintStyle: TextStyle(color: Colors.grey)),
        ),
        Divider(
          height: 30,
          color: Colors.white,
          thickness: 1,
          indent: 20,
          endIndent: 20,
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text("@@@@년 @월 @일 @요일",
              style: fontsmiddle, textAlign: TextAlign.center),
        ),
        Camerapart(),
        Wirtecontent(),
      ],
    );
  }
}

class Camerapart extends StatefulWidget {
  const Camerapart({super.key});

  @override
  State<Camerapart> createState() => _CamerapartState();
}

class _CamerapartState extends State<Camerapart> {
  File? imagevalue;

  Future getimage() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image == null) {
      return;
    }
    final imageTemp = File(image.path);
    return setState(() {
      imagevalue = imageTemp;
    });
  }

  Widget showimage() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        color: const Color(0xffd0cece),
        width: 291,
        height: 291,
        child: Center(
            child: imagevalue == null
                ? const Text('No image selected.')
                : Image.file(File(imagevalue!.path))),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(22, 0, 22, 0),
      child: Container(
        width: 331,
        height: 392,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: const Color(0xffF6BDE5), width: 1),
        ),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 22, 20, 10),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color(0xff7E7A8F)),
                height: 291,
                width: 291,
                child: InkWell(
                    onTap: () {
                      setState(() {
                        getimage();
                      });
                    },
                    child: imagevalue != null
                        ? Ink.image(
                            width: 291,
                            height: 291,
                            image: NetworkImage(imagevalue.toString()),
                          )
                        : Column(
                            children: const [
                              Icon(Icons.add_photo_alternate),
                              Text('사진을 선택해주세요')
                            ],
                          )),
              ),
            ),
            const KeywordTextfield(),
          ],
        ),
      ),
    );
  }
}

class KeywordTextfield extends StatefulWidget {
  const KeywordTextfield({super.key});

  @override
  State<KeywordTextfield> createState() => _KeywordTextfieldState();
}

class _KeywordTextfieldState extends State<KeywordTextfield> {
  TextEditingController keywords = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    keywords.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: const InputDecoration(
          hintText: '#관련된 키워드를 적어보세요',
          hintStyle: TextStyle(color: Color(0xffF6BDE5), fontSize: 10)),
      textAlign: TextAlign.start,
      style: const TextStyle(color: Color(0xffffffff)),
      onTap: () {
        if (keywords.text != null) {
          divedetext();
        }
        return print('no data in textfield');
      },
      controller: keywords,
      onChanged: ((value) {
        keywords.text = value;
      }),
    );
  }

  void divedetext() {
    List<String> outputkeywords = keywords.text.split(' ');
    ListView.builder(
      shrinkWrap: true,
      itemCount: outputkeywords.length,
      itemBuilder: (context, index) {
        return keywordbox(outputkeywords[index]);
      },
    );
    print(outputkeywords);
  }
}

Widget keywordbox(String str) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: const Color(0xffF6BDE5), width: 1),
      ),
      child: Text(str),
    ),
  );
}

class Wirtecontent extends StatefulWidget {
  const Wirtecontent({super.key});

  @override
  State<Wirtecontent> createState() => _WirtecontentState();
}

class _WirtecontentState extends State<Wirtecontent> {
  TextEditingController writtingpartcontllor = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    writtingpartcontllor.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: writtingpartcontllor,
      onChanged: (value) {
        writtingpartcontllor.text = value;
      },
    );
  }
}
