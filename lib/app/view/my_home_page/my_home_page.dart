import 'package:flutter/material.dart';

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
          Calendar()
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





//WIDGET CALENDAR
class Calendar extends StatelessWidget {
  const Calendar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
          width: double.infinity,
          height: 112,
          decoration: const BoxDecoration(
            color: Color(0xFF1F222A),
            borderRadius: BorderRadius.all(Radius.circular(20)),
          )
      ),
    );
  }
}