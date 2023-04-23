import 'package:flutter/material.dart';
import 'package:recuerdapp/app/components/typography_h1.dart';
import 'package:recuerdapp/app/models/task.dart';
import 'package:recuerdapp/app/view/my_home_page/weekly_calendar.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<Widget> myTabs = const [
    Tab(
      child: Text('Pending'),
    ),
    Tab(
      child: Text('Completed'),
    )
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        backgroundColor: const Color(0xFF181A20),
        appBar: AppBar(
          title: const Text(
            'RecuerdApp',
            style: TextStyle(
                fontWeight: FontWeight.bold,
            ),
          ),
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
            const SizedBox(height: 50,),

            // EJEMPLO:
            TabBar(
              tabs: myTabs,
              indicatorSize: TabBarIndicatorSize.label,
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Container(

                  ),

                  Container(

                  ),
                ],
              ),
            ),
          ],
        ),


        floatingActionButton: FloatingActionButton(
          onPressed: () => _showNewTaskModal(context),
          backgroundColor: Theme.of(context).colorScheme.primary,
          child: const Icon(Icons.add_rounded),
        ),
      ),
    );
  }
}

void _showNewTaskModal(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (_) => _NewTaskModal(

    ),
  );
}


//MODAL TO ADD A NEW TASK
class _NewTaskModal extends StatelessWidget {
  _NewTaskModal({Key? key}) : super(key: key);

  final _controllerInputText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 15),
      child: Padding(
        padding:  EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min ,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 100,
                  height: 3,
                  color: Theme.of(context).colorScheme.primary,
                )
              ],),
            const SizedBox(height: 26,),
            const TypographyH1('Título'),
            const SizedBox(height: 26,),
            TextField(
              cursorColor: Theme.of(context).colorScheme.primary,
              controller: _controllerInputText,
              maxLength: 30,
              maxLines: 1,
              keyboardType: TextInputType.text,
              style: const TextStyle(
                color: Colors.white,
              ),
              decoration: InputDecoration(
                hintStyle: const TextStyle(
                  color: Colors.white,
                ),
                counterStyle: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                ),
                filled: true,
                fillColor: Colors.grey[850],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                hintText: ('Describe la tarea'),
              ),
              onSubmitted: (String value){
                //ACCION CUANDO EL ENTER DEL TECLADO SE PULSE
              },
            ),
            const SizedBox(height: 26,),
            ElevatedButton(
              onPressed: (){
                if(_controllerInputText.text.isNotEmpty){
                  Navigator.of(context).pop();
                }
              },
              child: const Text('Guardar'),
            ),
          ],
        ),
      ),
    );
  }
}

