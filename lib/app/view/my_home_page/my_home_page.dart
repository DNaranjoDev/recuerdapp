import 'package:flutter/material.dart';
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
          IconButton(onPressed: () {}, icon: const Icon(Icons.filter_list_alt)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.menu_rounded)),
        ],
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: const [
          SizedBox(height: 40,),
          WeeklyCalendar(),

        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        //DECORATION
        selectedItemColor: const Color(0xFF0FC1E9),
        unselectedItemColor: Colors.white24,

        //LOGIC
        currentIndex: selectedIndex,
        onTap: (value){
          setState(() {
            selectedIndex = value;
          });
        },
        elevation: 0,
        backgroundColor:const Color(0xFF181A20),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
            
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today_rounded),
            label: 'Calendar',
          ),
        ],
      ),
    );
  }
}
