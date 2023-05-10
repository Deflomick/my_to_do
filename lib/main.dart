import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_to_do/screens/home.dart';

void main () {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(

      ),
      theme: ThemeData(
        primarySwatch: Colors.yellow
      ),
    );
  }
}










//VERSION 0.1

/*
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    //SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent)); //chrome


    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'MyToDo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}
*/