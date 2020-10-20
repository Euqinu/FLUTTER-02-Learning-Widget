import 'package:flutter/material.dart';
import './BgImage.dart';
import './form.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        centerTitle: true,
      ),
      body:Stack(
        fit: StackFit.expand,
        children: [
          BgImage(),
          Center(
            child: Padding(
                padding: EdgeInsets.all(12),
                child: MyForm(),
              
            ),
          ),

        ],
      ),
    );
  }
}
