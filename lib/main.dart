import 'package:flutter/material.dart';
import 'package:practiceproject_dart/City.dart';
import 'package:practiceproject_dart/Productfile.dart';
import 'package:practiceproject_dart/SecondScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/' : (context) => City(),
        '/Product file/' : (context) => Productfiles(),
        '/second_file/' : (context) => SecondScreen(),
      },
    );
  }
}
