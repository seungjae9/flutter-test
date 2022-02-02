import 'package:flutter/material.dart';

///응용사항
/// - 완료버튼 눌러도 Dialog 닫히게 만들려면?
/// - 빈칸으로 완료버튼 누르면 추가안되게?
/// - 이름옆에 삭제버튼과 기능?
/// - 이름들 가나다순 정렬버튼? (sort함수 사용법을 찾아봅시다)
/// - 전화번호 데이터도 3개 마련해놓고 전화번호도 보여주고 싶으면?


void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var total = 3;
  var name = ['김영숙', '홍길동', '박승재'];

  addOne() {
    setState(() {
      total++;
    });
  }

  addName(input) {
    setState(() {
      name.add(input.toString());
    });
  }

  @override
  build(context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(
                context: context,
                barrierDismissible: false,
                builder: (context) {
                  return DialogUI(addOne: addOne, addName: addName);
                });
          },
        ),
        appBar: AppBar(
          title: Text(total.toString()),
        ),
        body: ListView.builder(
          itemCount: name.length,
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
  DialogUI({Key? key, this.addOne, this.addName}) : super(key: key);
  final addOne;
  final addName;
  var inputData = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: SizedBox(
        width: 300,
        height: 300,
        child: Column(
          children: [
            TextField(controller: inputData),
            TextButton(
                onPressed: () {
                  addOne();
                  addName(inputData.text);
                },
                child: Text('확인')),
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
