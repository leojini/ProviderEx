import 'package:flutter/material.dart';
import 'package:provider_ex/data/global_store.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

class ResponseChild extends StatefulWidget {
  const ResponseChild({Key? key}) : super(key: key);

  @override
  State<ResponseChild> createState() => _ResponseChildState();
}

class _ResponseChildState extends State<ResponseChild> {
  @override
  void initState() {
    super.initState();
    context.read<GlobalStore>().getHttpRequestData();
  }

  @override
  Widget build(BuildContext context) {
    final httpResponseData = context.watch<GlobalStore>().httpResponseData;
    return Center(
      child: Container(
        child: SizedBox(
            width: double.infinity,
            child: httpResponseData.isEmpty
                ? Text('loading...', textAlign: TextAlign.center, style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),)
                : ListView.builder(
              itemCount: httpResponseData.length,
              itemBuilder: (BuildContext c, int i) {
                return Text(httpResponseData[i]['title'], style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal));
              },
            )
        ),
        color: Colors.white,
      ),
    );
  }
}