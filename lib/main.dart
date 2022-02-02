import 'package:flutter/material.dart';

/// context 란?(the build location of the current widget) - 부모위젯의 정보를 담고있는 변수
/// 커스텀위젯을 만들때마다 하나씩 생긴다. (쉽게 비유해서 부모들만 나온 족보)
/// Builder -> 족보 생성기
/// 해당하는 부모 context가 없을때 context 에러가 생긴다 이때, 부모를 만들어 주거나 / builder 로 족보를 만들어준다.

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var name = ['김영숙', '홍길동', '박승재'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(
                context: context,
                barrierDismissible: false,
                builder: (context) {
                  return AlertDialog(
                    title: Text(
                      'Contact',
                      style: TextStyle(fontSize: 20),
                    ),
                    content: TextField(),
                    actions: [
                      TextButton(onPressed: () {
                        Navigator.of(context).pop();
                      }, child: Text('Cancel')),
                      TextButton(onPressed: () {}, child: Text('OK')),
                    ],
                  );
                });
          },
        ),
        appBar: AppBar(),
        body: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, item) {
            return ListTile(
              leading: Image.network(
                  'https://icons.iconarchive.com/icons/papirus-team/papirus-apps/256/twitter-icon.png'),
              title: Text(name[item]),
            );
          },
        ));
  }
}
