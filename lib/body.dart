import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';



class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  TextEditingController _nameController=TextEditingController();
  var nametext="Change me";
  var url="https://jsonplaceholder.typicode.com/photos";
  var data;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    getData();
  }
  getData() async{
    var res= await http.get(url);
    print(res.body);
    print(jsonDecode(res.body));
    setState(() {
      data=jsonDecode(res.body);
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Flutter Learning'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: data==null?
        Center(child: CircularProgressIndicator()) :
        Card(
              child: ListView.builder(
                itemCount: data.length,
                  itemBuilder: (context,index){
                    return
                    Padding(
                      padding: EdgeInsets.all(8),

                      child: ListTile(
                        title: Text(data[index]["title"]),
                        leading: Image.network(data[index]["url"]),

                      ),
                    );
                  }
              ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            nametext=_nameController.text;
          });
        },
        child: Icon(Icons.refresh),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Euqinu'),
              accountEmail: Text('test@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage('https://images.unsplash.com/photo-1564564321837-a57b7070ac4f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1355&q=80'),
              ),
            ),
            ListTile(
              leading: Icon(Icons.edit),
              title: Text('Edit Info'),
              subtitle: Text('Personal info'),
            ),
            ListTile(
              leading: Icon(Icons.edit),
              title: Text('Edit Info'),
              subtitle: Text('Personal info'),
            )
          ],
        ),
      ),
    );
  }
}
