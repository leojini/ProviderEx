import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_ex/data/global_store.dart';


class FirstChild extends StatefulWidget {
  const FirstChild({Key? key, this.firstChildValue}) : super(key: key);
  final int? firstChildValue;

  @override
  State<FirstChild> createState() => _FirstChildState();
}

class _FirstChildState extends State<FirstChild> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${widget.firstChildValue ?? 'n'}번째 자식 위젯'),
          ],
        ),
        Column(
          children: [
            Text('Global Store: ${context.read<GlobalStore>().arr[0]}'),
            Text('Global Store: ${context.read<GlobalStore>().arr[1]}'),
          ],
        )
      ],
    );
  }
}