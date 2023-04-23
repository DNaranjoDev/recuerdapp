import 'package:flutter/material.dart';
import 'package:recuerdapp/app/view/my_home_page/my_home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //DARK THEME
    const Color effect = Color(0xFF282C34);
    const Color primary = Color(0xFFEE874C);
    const Color secondary = Color(0xFF0FC1E9);
    const Color tertiary = Color(0xFF36486C);
    const Color textColor = Color(0xFFFFFFFF);
    const Color backgroundColor = Color(0xFF181A20);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RecuerdApp',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: primary,
            primary: primary,
            secondary: secondary,
            tertiary: tertiary,
            background: backgroundColor,
          ),
          textTheme: const TextTheme(
            bodyMedium: TextStyle(
              color: textColor,
            ),
          ),

          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: primary,
              //minimumSize: const Size(double.infinity, 54),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              textStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
            ),
          ),

          bottomSheetTheme: const BottomSheetThemeData(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            ),
          ),

          floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: Theme.of(context).colorScheme.primary,
          )),
      home: MyHomePage(
        title: "RecuerdApp",
      ),
    );
  }
}
