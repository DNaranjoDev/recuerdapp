import 'package:flutter/material.dart';
import 'package:recuerdapp/app/view/my_home_page/my_home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    //DARK THEME
    const Color primary =  Color(0xFF282C34);
    const Color secondary =  Color(0xFFEE874C);
    const Color effects1 =  Color(0xFF0FC1E9);
    const Color effects2 =  Color(0xFF36486C);
    const Color textColor =  Color(0xFFFFFFFF);
    const Color backgroundColor =  Color(0xFF181A20);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RecuerdApp',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: primary,
          primary: primary,
          secondary: secondary,
          tertiary: effects1,
          background: backgroundColor,
        ),

        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            color: textColor,
          ),
        ),

        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Theme.of(context).colorScheme.secondary,
        )
      ),
      home: MyHomePage(title: "RecuerdApp",),
    );
  }
}