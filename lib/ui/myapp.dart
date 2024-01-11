import 'package:flutter/material.dart';
import 'package:provider_ex/ui/first_child.dart';
import 'package:provider_ex/ui/response_child.dart';
import 'package:provider_ex/ui/second_child.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int firstChildValue = 1;
  int secondChildValue = 2;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('GlobalStore에서 끌어다 쓸 값 자리'),
          FirstChild(firstChildValue: firstChildValue),
          SecondChild(secondChildValue: secondChildValue),
          TextButton(
            child: Text('네트워크 요청',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ResponseChild()),
              );
            },
          )
        ],
      ),
    );
  }
}