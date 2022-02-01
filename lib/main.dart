import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

///
/// 커스텀 위젯 다는 방법 2가지
/// 1. 변수화
/// 2. class 화
/// 
/// 리스트뷰
/// - 스크롤바 자동 생김
/// - 스크롤 위치 감시 가능
/// - 메모리 절약 기능
///



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(),
            body: ListView(
              children: [
                Text('dd'),
                Text('dd'),
                Text('dd'),
                Text('dd'),
              ],
            )
        )
    );
  }
}
