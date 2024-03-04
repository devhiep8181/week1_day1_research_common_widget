import 'package:flutter/material.dart';


///triển khai thử câu này trên doc về Scfolld
///
///To display a persistent bottom sheet, 
///obtain the ScaffoldState for the current BuildContext via 
///Scaffold.of and use the ScaffoldState.showBottomSheet function.
class ScaffoldMaterial extends StatelessWidget {
  const ScaffoldMaterial({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: Scaffold(
      body: ScaffoldWidget(),
    ));
  }
}

class ScaffoldWidget extends StatefulWidget {
  const ScaffoldWidget({super.key});

  @override
  State<ScaffoldWidget> createState() => _ScaffoldWidgetState();
}

class _ScaffoldWidgetState extends State<ScaffoldWidget> {
  late ScaffoldState _scaffoldState;

  @override
  void initState() {
    super.initState();
    // Lấy ScaffoldState sớm trong initState để thực hành tốt hơn
    _scaffoldState = Scaffold.of(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ví dụ về Bottom Sheet Cố định'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _scaffoldState.showBottomSheet(
                (context) => _buildPersistentBottomSheet(context));
          },
          child: const Text('Hiển thị Bottom Sheet'),
        ),
      ),
    );
  }

  Widget _buildPersistentBottomSheet(BuildContext context) {
    return Container(
      height: 200, // Điều chỉnh độ cao theo nhu cầu
      color: Colors.grey[200], // Tùy chỉnh màu nền
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Đây là bottom sheet cố định'),
            TextButton(
              onPressed: () => Navigator.pop(context), // Đóng bottom sheet
              child: const Text('Đóng'),
            ),
          ],
        ),
      ),
    );
  }
}
