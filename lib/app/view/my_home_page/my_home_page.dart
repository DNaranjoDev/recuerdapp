import 'package:flutter/material.dart';
import 'package:recuerdapp/app/view/my_home_page/weekly_calendar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF181A20),
      appBar: AppBar(
        title: const Text('RecuerdApp'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.filter_list_alt)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.menu_rounded)),
        ],
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: const [
          SizedBox(height: 45,),
          WeeklyCalendar()
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        backgroundColor: Colors.deepOrangeAccent,
        child: const Icon(Icons.add),
      ),
    );
  }
}
