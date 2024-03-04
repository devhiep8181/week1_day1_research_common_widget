import 'package:flutter/material.dart';

class ColumnMaterial extends StatelessWidget {
  const ColumnMaterial({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        appBar: AppBar(title: const Text('Column Material'),),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center, // căn giữa theo trục chính
          crossAxisAlignment: CrossAxisAlignment.stretch, // căn full chiều ngang
          mainAxisSize: MainAxisSize.max, // chiều cao của Column sẽ là tối đa
          children: [
            Container(
              color: Colors.red,
              height: 100,
              child: const Center(
                child: Text(
                  'Item 1',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 20), // Khoảng cách giữa các widget
            Container(
              color: Colors.blue,
              height: 150,
              child: const Center(
                child: Text(
                  'Item 2',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              color: Colors.green,
              height: 200,
              child: const Center(
                child: Text(
                  'Item 3',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}