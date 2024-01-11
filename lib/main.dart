import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_ex/data/global_store.dart';
import 'package:provider_ex/ui/myapp.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (create) => GlobalStore())
      ],
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('위젯간 값 전달하기'),
          ),
          body: MyApp(),
        )
      ),
    )
  );
}
