import 'package:firebase_login_app/my_button/my_button.dart';
import 'package:flutter/material.dart';

class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Sign in',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        elevation: 0.2,
      ),
      body: _buildButton(),
    );
  }

  Widget _buildButton() {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MyButton(
              image: Image.asset('images/glogo.png'),
              text: Text('Login with Goggle',
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 15.0
                ),
              ),
              color: Colors.white,
              radius: 4.0,
              onPressed: (){}
          ),
          SizedBox(height: 10.0,),
          ButtonTheme(
            height: 50.0,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.blue
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('images/flogo.png'),
                  Text('Login with Facebook',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0
                    ),
                  ),
                  Opacity(
                    opacity: 0.0,
                    child: Image.asset('images/flogo.png'),
                  )
                ],
              ),
              onPressed: (){

              },
            ),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(4.0))
            ),
          ),
          SizedBox(height: 10.0,),
          ButtonTheme(
            height: 50.0,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.green
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.email),
                  Text('Login with Email',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0
                    ),
                  ),
                  Opacity(
                    opacity: 0.0,
                    child: Icon(Icons.email),
                  )
                ],
              ),
              onPressed: (){

              },
            ),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(4.0))
            ),
          ),
        ],
      ),
    );
  }
}
