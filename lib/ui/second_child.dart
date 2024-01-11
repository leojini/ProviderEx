import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_ex/data/global_store.dart';

class SecondChild extends StatefulWidget {
  const SecondChild({Key? key, this.secondChildValue}) : super(key: key);
  final int? secondChildValue;

  @override
  State<SecondChild> createState() => _SecondChildState();
}

class _SecondChildState extends State<SecondChild> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${widget.secondChildValue ?? 'n'}번째 자식 위젯'),
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