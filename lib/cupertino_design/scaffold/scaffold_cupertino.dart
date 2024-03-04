import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScaffoldCupertino extends StatelessWidget {
  const ScaffoldCupertino({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            color: Colors.red,
            child: Text("HEHE"),
          ),
        ),
      ),
    );
  }
}
