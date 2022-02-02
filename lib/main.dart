import 'package:flutter/material.dart';

/// 부모 -> 자식 state 전송 방법
/// 1. 보내고
///   - 보내려면 자식위젯 (작명: 보낼 state)
/// 2. 등록하고
///  - 부모가 보낸 state 는 read-only 가 제일 좋기 떄문에 final로 등록해주기(자식에서)
/// 3. 씁니다

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var a = 3;
  var name = ['김영숙', '홍길동', '박승재'];

  @override
  build(context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(
                context: context,
                barrierDismissible: false,
                builder: (context) {
                  return DialogUI(state: a);
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

class DialogUI extends StatelessWidget {
  const DialogUI({Key? key, this.state}) : super(key: key);
  final state;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: SizedBox(
        width: 300,
        height: 300,
        child: Column(
          children: [
            TextField(),
            TextButton(onPressed: () {}, child: Text(state.toString())),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('취소')),
          ],
        ),
      ),
    );
  }
}
