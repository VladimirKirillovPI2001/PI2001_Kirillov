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
          title: const Text('LIST OF ELEMENTS'),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Text('string $index');
          },
        ),
      ),
    );
  }
}
