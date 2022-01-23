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
        appBar: AppBar(
          backgroundColor: Colors.white,
          toolbarHeight: 50,
          title: TextButton(
            onPressed: () {},
            child: Row(
              children: const [
                Text(
                  '중앙로 248',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 18),
                ),
                Icon(
                  Icons.arrow_drop_down,
                  color: Colors.black,
                )
              ],
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
              color: Colors.black,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.menu),
              color: Colors.black,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications_outlined),
              color: Colors.black,
            ),
          ],
        ),
        body: Container(
          height: 150,
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              Image(
                image: NetworkImage('https://www.daangn.com/logo.png'),
                width: 150,
                height: 150,
              ),
              Container(
                width: 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('카메라 팝니다'),
                    Text('금호동 3가'),
                    Text('7,000원'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [Icon(Icons.favorite), Text('4')],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        // body: Container(
        //   height: 200,
        //   child: Container(
        //     margin: const EdgeInsets.all(10),
        //     child: Row(
        //       children: [
        //         Container(
        //           margin: const EdgeInsets.fromLTRB(5, 0, 0, 30),
        //           child: const Image(
        //             image: NetworkImage('https://www.daangn.com/logo.png'),
        //             width: 100,
        //             height: 100,
        //             fit: BoxFit.fill,
        //           ),
        //         ),
        //         Container(
        //           margin: const EdgeInsets.all(10),
        //           child: Column(
        //             crossAxisAlignment: CrossAxisAlignment.start,
        //             children: const [
        //               SizedBox(
        //                 child: Text(
        //                   '캐논 DSLR 100D(단렌즈, \n 충전기 16기가 SD 포함',
        //                   style: TextStyle(fontSize: 18),
        //                 ),
        //               ),
        //               SizedBox(
        //                 child: Text(
        //                   '성동구 행당동 끌올 10분 전',
        //                   style: TextStyle(fontSize: 13, color: Colors.grey),
        //                 ),
        //               ),
        //               SizedBox(
        //                 child: Text(
        //                   '210,000원',
        //                   style: TextStyle(
        //                       fontSize: 13, fontWeight: FontWeight.w600),
        //                 ),
        //               ),
        //             ],
        //           ),
        //         )
        //       ],
        //     ),
        //   ),
        // ),
      ),
    );
  }
}
