import 'package:flutter/material.dart';

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

  @override
  build(context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(
                context: context,
                barrierDismissible: false,
                builder: (context) {
                  return DialogUI(addOne: addOne);
                });
          },
        ),
        appBar: AppBar(
          title: Text(total.toString()),
        ),
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
  DialogUI({Key? key, this.addOne}) : super(key: key);
  final addOne;
  var inputData = TextEditingController();
  var inputData2 = '';

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: SizedBox(
        width: 300,
        height: 300,
        child: Column(
          children: [
            TextField(controller: inputData),
            TextField(onChanged: (text) {
              inputData2 = text;
            }),
            TextButton(
                onPressed: () {
                  addOne();
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
