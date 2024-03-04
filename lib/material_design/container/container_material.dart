import 'package:flutter/material.dart';

class ContainerMaterial extends StatelessWidget {
  const ContainerMaterial({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Container Widget in Material'),
        ),
        body: Container(
          color: Colors.red,
          child: Text("HIHI"),
        ),
      ),
    );
  }
}
