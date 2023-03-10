// import 'package:flutter/material.dart';
// import './main.dart';

// class Page1 extends StatelessWidget {
//   const Page1(this.image, {super.key});

//   final String image;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xff0A0028),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const SizedBox(height: 60.0),
//             Image.asset(image),
//           ],
//         ),
//       ),
//     );
//   }
// }

/*

import 'package:flutter/material.dart';
import 'onboarding.dart';
import './onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: OnBoardingPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Main Screen',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            // ElevatedButton(
            //   onPressed: (){
            //     Navigator.of(context).pushReplacement(
            //       MaterialPageRoute(builder: (context) =>
            //       const OnBoardingPage()),
            //     );
            //   },
            //   child: const Text('Go to onboarding screen'),
            // ),
          ],
        ),
      ),
    );
  }
}

*/

// import 'package:flutter/material.dart';
// import 'onboarding.dart'; // onboarding.dart import

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: OnBoardingPage(), // onboarding.dart ????????? OnBoardingPage()??? ??????????????? ??????
//     );
//   }
// }

// class MyPage extends StatelessWidget {
//   const MyPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // Scaffold ????????? ????????? AppBar??? ??????
//       appBar: AppBar(
//         // Flutter 2.5 ???????????? ??? ??? ???????????? ????????? ?????? ???????????? ???????????? ?????? ????????? const ???????????? ???????????? ????????????
//         title: const Text('Main Page'),
//       ),
//       body: Center(
//         // Center ????????? ????????? child??? Column ????????? ?????????
//         child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
//           const Text(
//             'Main Screen',
//             style: TextStyle(
//               fontSize: 25,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           ElevatedButton(
//             // ElevatedButton ?????? ??????
//             onPressed: () {
//               Navigator.of(context).push(
//                 MaterialPageRoute(
//                     builder: (context) =>
//                         const OnBoardingPage()), // MyPage ?????? ??????
//               );
//             },
//             child: const Text('Go to OnBoarding Screen'),
//           ),
//         ]),
//       ),
//     );
//   }
// }