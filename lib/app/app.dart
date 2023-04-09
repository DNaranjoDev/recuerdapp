import 'package:flutter/material.dart';
import 'package:recuerdapp/app/view/my_home_page/my_home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    const Color primary =  Color(0xFF181A20);
    const Color textColor =  Color(0xFFFFFFFF);
    const Color backgroundColor =  Color(0xFF181A20);

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