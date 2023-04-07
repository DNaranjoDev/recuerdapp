import 'package:flutter/material.dart';

class WeeklyCalendar extends StatelessWidget {
  const WeeklyCalendar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
          width: 407,
          height: 112,
          decoration: const BoxDecoration(
            color: Color(0xFF1F222A),
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
        child: Padding(
          padding: const EdgeInsets.only(top: 18,),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  const [
              _TypeCalendar('L'),
              SizedBox(width: 40,),
              _TypeCalendar('M'),
              SizedBox(width: 40,),
              _TypeCalendar('X'),
              SizedBox(width: 40,),
              _TypeCalendar('J'),
              SizedBox(width: 40,),
              _TypeCalendar('V'),
              SizedBox(width: 40,),
              _TypeCalendar('S', color: Color(0xFFEF2D2D),),
              SizedBox(width: 40,),
              _TypeCalendar('D', color: Color(0xFFEF2D2D),),
            ],
          ),
        ),
      ),
    );
  }
}




//TIPOGRAFIA A USAR EN EL WIDGET DE CALENDARIO SEMANAL
class _TypeCalendar extends StatelessWidget {
   const _TypeCalendar(this.text, {this.color = Colors.white});

  final String text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(text,
      style: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w800,
        color: color
      ),
    );
  }
}