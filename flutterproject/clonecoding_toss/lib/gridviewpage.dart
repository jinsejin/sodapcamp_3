import 'package:clonecoding_toss/homvariable.dart';
import 'package:flutter/material.dart';

class Data {
  String bank;
  String image;
  Data(this.bank, this.image);
}

List<Data> girdviewbank = [
  Data("농협", "assets/images/농협.png"),
  Data("KB국민", "assets/images/kbbank.png"),
  Data("카카오뱅크", "assets/images/kakaobank.png"),
  Data("신한", "assets/images/제주 1.png"),
  Data("우리", "assets/images/ourbank.png"),
  Data("IBK기업", "assets/images/기업은행 2.png"),
  Data("하나", "assets/images/onebank.png"),
  Data("새마을", "assets/images/새마을 1.png"),
  Data("대구", "assets/images/Dgb.png"),
  Data("부산", "assets/images/부산 4.png"),
  Data("케이뱅크", "assets/images/케이뱅크 1.png"),
];
List<Data> girdviewStock = [
  Data("농협", "assets/images/농협2.png"),
  Data("한국투자", "assets/images/한국투자 1.png"),
  Data("신한금융투자", "assets/images/제주 2.png"),
  Data("하나금융", "assets/images/onebank.png"),
  Data("키움", "assets/images/키움 1.png"),
  Data("미래에셋", "assets/images/mireaasset.png"),
  Data("KB국민", "assets/images/kbbank2.png"),
  Data("카카오페이증권", "assets/images/kakaopay.png"),
  Data("대신", "assets/images/대신 1.png"),
];

class Gridviewpages extends StatefulWidget {
  const Gridviewpages({super.key});

  @override
  State<Gridviewpages> createState() => _GridviewpagesState();
}

class _GridviewpagesState extends State<Gridviewpages> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(20, 40, 0, 0),
          child: SizedBox(
            height: 80,
            child: Text(
              "어디로 보낼까요?",
              style: bigtitle,
            ),
          ),
        ),
        gridview(girdviewbank),
        const Padding(
          padding: EdgeInsets.fromLTRB(20, 10, 0, 10),
          child: SizedBox(
            child: Text(
              "증권사 선택",
              style: title14,
            ),
          ),
        ),
        gridview(girdviewStock),
      ],
    );
  }

  Widget gridview(List data) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Container(
        width: 325,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
        child: GridView.count(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          //childAspectRatio: 1 / 1, // child의 크기 비율
          mainAxisSpacing: 10, //수평 Padding
          crossAxisSpacing: 10, //수직 Padding
          crossAxisCount: 3,
          children: List.generate(data.length, (index) {
            return Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFFFAFAFA)),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(data[index].image),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(data[index].bank),
                    ),
                  ]),
            );
          }),
        ),
      ),
    );
  }
}
