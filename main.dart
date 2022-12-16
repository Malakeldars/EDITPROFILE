import 'dart:html';
import "package:flutter/material.dart";
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp()); //MaterialApp
}

MaterialApp MyApp() {
  return MaterialApp(
    home: Scaffold(
      appBar: AppBar(

        actions: <Widget>[

          IconButton(
            icon: const Icon(Icons.settings),
            tooltip: 'Setting Icon',
            onPressed: () {},
          ), //IconButton
        ], //<Widget>[]
        backgroundColor: Colors.greenAccent[400],
        elevation: 50.0,
        leading: IconButton(
          icon: const Icon(Icons.navigate_before),
          tooltip: 'Navigation Icon',
          onPressed: () {},
        ),
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ), //AppBar
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.all(5),
               alignment:Alignment.topLeft,
               child: const Text('Edit Profile',
                 style: TextStyle(fontSize: 30),
                 textAlign: TextAlign.left,

         ),

      ),

          Center(
            child: CircleAvatar(
              backgroundImage: AssetImage('assests/unkown.png'),
                radius: 70.0,
            ),
          ),


          Container(
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.all(5),
            alignment: Alignment.centerLeft,
            child: Text('Full Name',
                style: const TextStyle(color:Colors.black,fontSize: 20),
            ),
          ),
          TextField(
            style: TextStyle(color:Colors.blue,fontSize: 15),
            decoration: InputDecoration(hintText: 'Enter your Name'),
          ),


      Container(
        margin: EdgeInsets.all(8),
        padding: EdgeInsets.all(5),
        alignment: Alignment.centerLeft,
        child: Text('Email',
          style: TextStyle(color:Colors.black,fontSize: 20),
    ),
      ),
      TextField(
      style: TextStyle(color:Colors.blue,fontSize: 15),
      decoration: InputDecoration(hintText: 'Enter your Email',
      suffixIcon: Icon(Icons.email)),
      ),
      Container(
        margin: EdgeInsets.all(8),
        padding: EdgeInsets.all(5),
        alignment: Alignment.centerLeft,
       child:Text('Password',
      style: TextStyle(color:Colors.black,fontSize: 20),
  ),),
  TextField(
  style: TextStyle(color:Colors.blue,fontSize: 15),
  decoration: InputDecoration(hintText: 'Enter your Password',
   suffixIcon: Icon(Icons.visibility_off)),
  ),
Container(
  margin: EdgeInsets.all(8),
  padding: EdgeInsets.all(5),
  alignment: Alignment.centerLeft,
  child:Text('Location',
  style: TextStyle(color:Colors.black,fontSize: 20),
  ),),
  TextField(
  style: TextStyle(color:Colors.blue,fontSize: 15),
  decoration: InputDecoration(hintText: 'Enter your Location'),
  ),

      Row(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(650,8,30,0),
            padding: EdgeInsets.all(5),
            child: ElevatedButton(
  style: ElevatedButton.styleFrom(elevation: 10),
  onPressed: () {},
  child: const Text('Save'),
            ),
          ),

            Container(
              margin: EdgeInsets.fromLTRB(50,8,30,0),
              padding: EdgeInsets.all(5),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(elevation: 10),
                onPressed: () {},
                child: const Text('Cancel'),),
            )
      ],
              )

        ]
      ),
       //Center
    ), //Scaffold
    debugShowCheckedModeBanner: false, //Removing Debug Banner
  );
}

