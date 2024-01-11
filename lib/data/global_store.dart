import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class GlobalStore extends ChangeNotifier {
  String str = 'Store 입니다';
  List<String> arr = ["Store1", "Store2"];

  List<dynamic> httpResponseData = [];

  void getHttpRequestData() async {
    var request = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    var parseData = jsonDecode(request.body);
    httpResponseData = parseData;
    notifyListeners();
  }
}