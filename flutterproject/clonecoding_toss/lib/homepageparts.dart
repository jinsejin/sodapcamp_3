import 'package:flutter/material.dart';
import 'package:clonecoding_toss/homvariable.dart';

class Bodylistview extends StatefulWidget {
  const Bodylistview({super.key});

  @override
  State<Bodylistview> createState() => _BodylistviewState();
}

class _BodylistviewState extends State<Bodylistview> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Tossbankinglistview(),
        Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
            side: const BorderSide(
              color: Color(0xFFD8D8D8),
            ),
          ),
          child: const Momeybankinglistview(),
        ),
        consumptioncard,
        const Carouselpart(),
        Container(
          alignment: Alignment.center,
          height: 80,
          child: const Padding(
            padding: EdgeInsets.all(0),
            child: Text(
              "금액 숨기기    |   자산 추가",
              style: title14,
            ),
          ),
        ),
        //const Carouselpart(),
      ],
    );
  }

  Widget consumptioncard = Card(
    elevation: 0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(25),
      side: const BorderSide(
        color: Color(0xFFD8D8D8),
      ),
    ),
    child: Column(
      children: [
        SizedBox(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
            child: ListTile(
              leading: Image.asset('assets/images/kakaocard.png'),
              title: const Text("이번 달 쓴 금액"),
              subtitle: const Text("467,200 원"),
              trailing: TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: const Color(0xFFDFE0E1)),
                onPressed: () {},
                child: const Text(
                  "내역",
                  style: textbouttontitle,
                ),
              ),
            ),
          ),
        ),
        const Divider(thickness: 2, indent: 20, endIndent: 20),
        SizedBox(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
            child: ListTile(
              leading: Image.asset('assets/images/day-9.png'),
              title: const Text("7월 13일 낼 카드 값"),
              subtitle: const Text("1200 원"),
            ),
          ),
        )
      ],
    ),
  );
}

class Tossbankinglistview extends StatelessWidget {
  const Tossbankinglistview({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
        side: const BorderSide(
          color: Color(0xFFD8D8D8),
        ),
      ),
      child: const ListTile(
        minVerticalPadding: 30,
        leading: Text(
          '토스뱅킹',
          style: bigtitle,
        ),
        trailing: Icon(
          Icons.arrow_forward_ios,
        ),
      ),
    );
  }
}

class Momeybankinglistview extends StatefulWidget {
  const Momeybankinglistview({super.key});

  @override
  State<Momeybankinglistview> createState() => _MomeybankinglistviewState();
}

class _MomeybankinglistviewState extends State<Momeybankinglistview> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
            child: Text(
              "자산",
              style: bigtitle,
            ),
          ),
        ),
        moneycash,
      ],
    );
  }

  Widget moneycash = Column(
    children: List<Widget>.generate(eachcash.length, (index) {
      if (index < 5) {
        return Padding(
          padding: const EdgeInsets.all(10),
          child: ListTile(
            leading: moneyimage[index],
            title: moneystring[index],
            subtitle: eachcash[index],
            trailing: TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: const Color(0xFFDFE0E1)),
              onPressed: () {},
              child: const Text(
                "송금",
                style: songgum,
              ),
            ),
          ),
        );
      } else if (index == 5) {
        return Padding(
          padding: const EdgeInsets.all(10),
          child: ListTile(
            leading: moneyimage[index],
            title: moneystring[index],
            subtitle: eachcash[index],
          ),
        );
      } else {
        return SizedBox(
          child: Column(children: [
            const Divider(thickness: 2, indent: 20, endIndent: 20),
            Padding(
              padding: const EdgeInsets.all(10),
              child: ListTile(
                leading: moneyimage[index],
                title: moneystring[index],
                subtitle: eachcash[index],
              ),
            ),
          ]),
        );
      }
    }).toList(),
  );
}

// Carouselpart
class Carouselpart extends StatefulWidget {
  const Carouselpart({super.key});
  @override
  State<Carouselpart> createState() => _CarouselpartState();
}

class _CarouselpartState extends State<Carouselpart> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 156,
      child: listviewhorization,
    );
  }

  Widget listviewhorization = ListView(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      children: List<Widget>.generate(carouselimage.length + 1, (index) {
        if (index < 3) {
          return SizedBox(
            width: 127,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: const BorderSide(
                  color: Color(0xFFD8D8D8),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 8, 0, 0),
                    child: ListTile(
                      title: carouseltitle[index],
                      subtitle: carouselsubtitle[index],
                    ),
                  ),
                  SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [carouselimage[index]],
                    ),
                  )
                ],
              ),
            ),
          );
        } else {
          return SizedBox(
            width: 127,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: const BorderSide(
                  color: Color(0xFFD8D8D8),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(3, 8, 0, 0),
                child: ListTile(
                  title: carouseltitle[index],
                  subtitle: carouselsubtitle[index],
                ),
              ),
            ),
          );
        }
      }).toList());
}
