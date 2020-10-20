import 'package:flutter/material.dart';
import './body.dart';
import './login.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  TextEditingController _nameController=TextEditingController();
  var nametext="Change me";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple
      ),
      home:Login(),
      routes: {
        "/login":(context)=>Login(),
        "/home":(context)=>Body()
      },
    );
  }
}

