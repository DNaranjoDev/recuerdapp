import 'package:flutter/material.dart';
import 'package:recuerdapp/app/components/typography_h1.dart';
import 'package:recuerdapp/app/view/my_home_page/weekly_calendar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF181A20),
      appBar: AppBar(
        title: const Text('RecuerdApp'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.menu_rounded)),
        ],
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          const SizedBox(height: 40,),
          const WeeklyCalendar(),
          const SizedBox(height: 40,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 23),
            child: Row(
              children: const [
                TypographyH1('Pending'),
                SizedBox(width: 50,),
                TypographyH1('Completed', color: Color(0x33FFFFFF),),
              ],
            ),
          ),
        ],
      ),


      floatingActionButton: FloatingActionButton(
          onPressed: () {},
        backgroundColor: Theme.of(context).colorScheme.secondary,
        child: const Icon(Icons.add_rounded),
      ),
    );
  }
}
