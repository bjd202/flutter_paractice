import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First App',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BRANTO'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        elevation: 0.0, // 높이
      ),
      body: Center( // 가로축 센터
        child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,  // 세로축 센터
            children: [
              Text('Hello'),
              Text('Hello'),
              Text('Hello'),
            ],
          ),
      ),
      
    );
  }
}