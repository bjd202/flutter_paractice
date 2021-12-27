import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Toast',
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Toast message'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: TextButton(
          onPressed: (){
            flutterToast();
            print('aaaa');
          },
          child: Text('Toast'),
          // ignore: prefer_const_constructors
          style: ButtonStyle(
            
          ),
        ),
      ),
    );
  }
}

void flutterToast(){
  Fluttertoast.showToast(msg: 'Flutter',
    gravity: ToastGravity.TOP_RIGHT,
    backgroundColor: Colors.redAccent,
    fontSize: 20.0,
    textColor: Colors.white,
    toastLength: Toast.LENGTH_SHORT
  );
}