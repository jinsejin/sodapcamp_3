import 'package:flutter/material.dart';

//homepage 변수들...
final List<Image> moneyimage = <Image>[
  Image.asset('assets/images/image 62.png'),
  Image.asset('assets/images/image 67.png'),
  Image.asset('assets/images/기업은행 2.png'),
  Image.asset('assets/images/kakaobank.png'),
  Image.asset('assets/images/image 72.png'),
  Image.asset('assets/images/image 67.png'),
  Image.asset('assets/images/image 74.png'),
];
const List<Text> moneystring = [
  Text('토스뱅킹 ', style: bankinhome),
  Text('우리뱅킹월렛카카오통장\n(저축예금)', style: bankinhome),
  Text('보통예금(IBK평생한가족통장)', style: bankinhome),
  Text('입출금통장', style: bankinhome),
  Text('영하나플러스 통장', style: bankinhome),
  Text('저축 우리청년희망 적금', style: bankinhome),
  Text('포인트머니 2개', style: bankinhome),
];
const List<Text> eachcash = [
  Text('16,735', style: subtitle),
  Text('74,000', style: subtitle),
  Text('0', style: subtitle),
  Text('0', style: subtitle),
  Text('12,210', style: subtitle),
  Text('2,500,000', style: subtitle),
  Text('2,500,000', style: subtitle),
];

//carosel변수
const List<Text> carouselsubtitle = [
  Text("신용점수\n보기", style: subtitle),
  Text("카드혜택\n받기", style: subtitle),
  Text("만보기\n", style: subtitle),
  Text("더보기\n", style: subtitle),
];
const List<Text> carouseltitle = [
  Text("안전하게", style: title),
  Text("최대 15만원", style: title),
  Text("최근", style: title),
  Text("인기", style: title),
];

final List<Image> carouselimage = [
  Image.asset('assets/images/creditgrade.png'),
  Image.asset('assets/images/cardbenefit.png'),
  Image.asset('assets/images/shose.png'),
];

//font변수들 모우자
const TextStyle subtitle = TextStyle(
    color: Color(0xFF000000), fontFamily: 'PretexdardBold', fontSize: 18);
const TextStyle title = TextStyle(
  color: Color(0xFF808388),
  fontFamily: 'PretexdardMdeium',
  fontSize: 9,
);
const TextStyle bankinhome = TextStyle(
  color: Color(0xFF808388),
  fontFamily: 'PretexdardMdeium',
  fontSize: 12,
);
const TextStyle title14 = TextStyle(
  color: Color(0xFF808388),
  fontFamily: 'PretexdardMdeium',
  fontSize: 14,
);
const TextStyle textbouttontitle = TextStyle(
  color: Color(0xFF000000),
  fontFamily: 'PretexdardMdeium',
);
const TextStyle songgum = TextStyle(
    color: Color(0xFF000000), fontFamily: 'PretexdardBold', fontSize: 15);
const TextStyle bigtitle = TextStyle(
  color: Color(0xFF000000),
  fontFamily: 'PretexdardBold',
  fontWeight: FontWeight.bold,
  fontSize: 26,
);
