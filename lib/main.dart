import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(),
            bottomNavigationBar: MyBottomAppBar(),
            body: ListView(
              children: [
                Container(
                  child: Row(
                    children: [
                      Image.network(
                        'https://png.clipart.me/istock/previews/9349/93493545-people-icon.jpg',
                        height: 20,
                      ),
                      SizedBox(width: 5),
                      Text('홍길동'),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Image.network(
                        'https://png.clipart.me/istock/previews/9349/93493545-people-icon.jpg',
                        height: 20,
                      ),
                      SizedBox(width: 5),
                      Text('홍길동'),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Image.network(
                        'https://png.clipart.me/istock/previews/9349/93493545-people-icon.jpg',
                        height: 20,
                      ),
                      SizedBox(width: 5),
                      Text('홍길동'),
                    ],
                  ),
                ),
              ],
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
