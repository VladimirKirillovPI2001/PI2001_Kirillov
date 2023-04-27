import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());


}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LIST OF ELEMENTS',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('SIMPLE LIST'),
        ),
        body: ListView(
          children: const [
            Text('0000'),
            Divider(),
            Text('0001'),
            Divider(),
            Text('0010'),
          ],
        ),
      ),
    );
  }
}
