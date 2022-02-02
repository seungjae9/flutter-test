import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var a = 1;
  var name = ['김영숙', '홍길동', '박승재'];
  var like = [0, 0, 0];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(),
            bottomNavigationBar: MyBottomAppBar(),
            body: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, item) {
                return ListTile(
                  leading: Text(like[item].toString()),
                  title: Text(name[item]),
                  trailing: TextButton.icon(
                      onPressed: () {
                        setState(() {
                          like[item]++;
                        });
                      },
                      icon: Icon(Icons.plus_one),
                      label: Text('좋아요')),
                );
              },
            )));
  }
}

class MyBottomAppBar extends StatelessWidget {
  const MyBottomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        child: Container(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: Icon(Icons.phone),
            onPressed: () {
              print('call');
            },
          ),
          IconButton(
            icon: Icon(Icons.message),
            onPressed: () {
              print('message');
            },
          ),
          IconButton(
            icon: Icon(Icons.book),
            onPressed: () {
              print('phone_book');
            },
          ),
        ],
      ),
    ));
  }
}
