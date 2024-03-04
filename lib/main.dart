import 'package:flutter/cupertino.dart';
import 'package:week1_day1_research_common_widget/cupertino_design/scaffold/scaffold_cupertino.dart';
import 'package:week1_day1_research_common_widget/material_design/container/container_material.dart';
import 'package:week1_day1_research_common_widget/material_design/scaffold/scaffold_material.dart';

import 'cupertino_design/container/contanier_cupertino.dart';

void main(List<String> args) {
  //runApp(MyApp());
  runApp(ContainerMaterial());
  runApp(ScaffoldCupertino());
  runApp(ScaffoldMaterial());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      home: MyHomeContainerCupertino(),
    );
  }
}
