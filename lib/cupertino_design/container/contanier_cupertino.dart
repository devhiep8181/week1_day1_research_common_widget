import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomeContainerCupertino extends StatelessWidget {
  const MyHomeContainerCupertino({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
          leading: Icon(Icons.help),
          trailing: Icon(Icons.admin_panel_settings),
          previousPageTitle: 'abc',
          middle: Text('Container Wiget in Cupertino'),
        ),
        child: Container(
            decoration: const BoxDecoration(
              color: Colors.red,
            ),
            child: const Text('oloka')));
  }
}
