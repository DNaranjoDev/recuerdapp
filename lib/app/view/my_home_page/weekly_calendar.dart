import 'package:flutter/material.dart';

class WeeklyCalendar extends StatelessWidget {

  const WeeklyCalendar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final DateTime dateTime = DateTime.now();
    final int l = dateTime.day-dateTime.weekday+1;
    final int m = dateTime.day-dateTime.weekday+2;
    final int x = dateTime.day-dateTime.weekday+3;
    final int j = dateTime.day-dateTime.weekday+4;
    final int v = dateTime.day-dateTime.weekday+5;
    final int s = dateTime.day-dateTime.weekday+6;
    final int d = dateTime.day-dateTime.weekday+7;


    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Card(
        elevation: 7,
        color: const Color(0xFF1F222A),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: SizedBox(
            width: 407,
            height: 112,
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    const _TypeCalendar('L', fontSize: 15,),
                    const SizedBox(height: 15,),
                    _TypeCalendar(l.toString()),
                  ],
                ),
                Column(
                  children: [
                    const _TypeCalendar('M', fontSize: 15,),
                    const SizedBox(height: 15,),
                    _TypeCalendar(m.toString()),
                  ],
                ),
                Column(
                  children: [
                    const _TypeCalendar('X', fontSize: 15,),
                    const SizedBox(height: 15,),
                    _TypeCalendar(x.toString()),
                  ],
                ),
                Column(
                  children: [
                    const _TypeCalendar('J', fontSize: 15,),
                    const SizedBox(height: 15,),
                    _TypeCalendar(j.toString()),
                  ],
                ),
                Column(
                  children: [
                    const _TypeCalendar('V', fontSize: 15,),
                    const SizedBox(height: 15,),
                    _TypeCalendar(v.toString()),
                  ],
                ),
                Column(
                  children: [
                    const _TypeCalendar(
                        'S',
                        fontSize: 15,
                        color: Color(0xFFEF2D2D)
                    ),
                    const SizedBox(height: 15,),
                    _TypeCalendar(s.toString()),
                  ],
                ),
                Column(
                  children: [
                    const _TypeCalendar(
                        'D',
                        fontSize: 15,
                        color: Color(0xFFEF2D2D)
                    ),
                    const SizedBox(height: 15,),
                    _TypeCalendar(d.toString()),
                  ],
                ),

              ],
            )
          ),
        ),
      ),
    );
  }
}




//TIPOGRAFIA A USAR EN EL WIDGET DE CALENDARIO SEMANAL
class _TypeCalendar extends StatelessWidget {
   const _TypeCalendar(
     this.text,{
     this.color = Colors.white,
     this.fontSize = 20
     }
   );

  final String text;
  final Color? color;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.w800,
        color: color
      ),
    );
  }
}
