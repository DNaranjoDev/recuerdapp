import 'package:flutter/material.dart';
import 'package:recuerdapp/app/view/MyHomePage.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RecuerdApp',
      theme: ThemeData(

        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(title: "RecuerdApp",),
    );
  }
}