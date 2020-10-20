import 'package:flutter/material.dart';


class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Form(
                child: Column(
                 children: [
                   TextFormField(
                     decoration: InputDecoration(
                       hintText: "Enter your username",
                       labelText: "Username"
                     ),
                   ),
                   SizedBox(height: 10,),
                   TextFormField(
                     obscureText: true,
                     decoration: InputDecoration(
                       hintText: "Enter your password",
                       labelText: "Password"
                     ),
                   ),
                   SizedBox(height: 20,),
                   RaisedButton(
                     onPressed: (){
                       Navigator.pushNamed(context, "/home");
                     },
                     child: Text('Sign In'),
                     color: Colors.orange,
                     textColor: Colors.white,

                   )
                 ],
                ),
              ),

            ),
          ),
        )
      ],
    );
  }
}
