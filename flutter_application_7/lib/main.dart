import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyApp',
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First page'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Go to the Second page'),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(
              builder: (_) => SecondPage(),
            ));
          },
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second page'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Go to the First page'),
          onPressed: (){
            Navigator.pop(ctx);
          },
        ),
      ),
    );
  }
}