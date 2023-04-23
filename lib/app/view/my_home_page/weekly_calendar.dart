import 'package:flutter/material.dart';

class WeeklyCalendar extends StatelessWidget {
  const WeeklyCalendar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final DateTime dateTime = DateTime.now();
    final int today = dateTime.day;
    final int currentWeekday = today - dateTime.weekday;
    final lastDay = DateTime(dateTime.year, dateTime.month + 1, 0).day;
    final primerDiaSemana = DateTime(dateTime.year, dateTime.month, 1).weekday;
    final primerDiaMesSiquiente =
        DateTime(dateTime.year, dateTime.month + 1, -1).weekday;
    final ultimoDiaMesAnterior = DateTime(dateTime.year, dateTime.month, 0).day;
    final lunesMesAnterior = ultimoDiaMesAnterior - primerDiaSemana + 2;
    final domingoMesSiguiente = 7 - primerDiaMesSiquiente - 1;

    int l = currentWeekday + 1;
    int m = currentWeekday + 2;
    int x = currentWeekday + 3;
    int j = currentWeekday + 4;
    int v = currentWeekday + 5;
    int s = currentWeekday + 6;
    int d = currentWeekday + 7;

    //DIAS MES ANTERIOR
    if (l <= 0) {
      l = lunesMesAnterior;
    }
    if (m <= 0) {
      m = lunesMesAnterior + 1;
    }
    if (x <= 0) {
      x = lunesMesAnterior + 2;
    }
    if (j <= 0) {
      j = lunesMesAnterior + 3;
    }
    if (v <= 0) {
      v = lunesMesAnterior + 4;
    }
    if (s <= 0) {
      s = lunesMesAnterior + 5;
    }
    if (d <= 0) {
      d = lunesMesAnterior + 6;
    }
    //DIAS MES SIGUIENTE
    if (l > lastDay) {
      l = domingoMesSiguiente - 6;
    }
    if (m > lastDay) {
      m = domingoMesSiguiente - 5;
    }
    if (x > lastDay) {
      x = domingoMesSiguiente - 4;
    }
    if (j > lastDay) {
      j = domingoMesSiguiente - 3;
    }
    if (v > lastDay) {
      v = domingoMesSiguiente - 2;
    }
    if (s > lastDay) {
      s = domingoMesSiguiente - 1;
    }
    if (d > lastDay) {
      d = domingoMesSiguiente;
    }

    const Color blue = Color(0xFF0FC1E9);
    const Color white = Color(0xFFFFFFFF);

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
                      const _TypeCalendar(
                        'L',
                        fontSize: 15,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      l == DateTime.now().day
                          ? _TypeCalendar(
                              l.toString(),
                              color: blue,
                            )
                          : _TypeCalendar(
                              l.toString(),
                              color: white,
                            ),
                    ],
                  ),
                  Column(
                    children: [
                      const _TypeCalendar(
                        'M',
                        fontSize: 15,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      m == DateTime.now().day
                          ? _TypeCalendar(
                              m.toString(),
                              color: blue,
                            )
                          : _TypeCalendar(
                              m.toString(),
                              color: white,
                            ),
                    ],
                  ),
                  Column(
                    children: [
                      const _TypeCalendar(
                        'X',
                        fontSize: 15,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      x == DateTime.now().day
                          ? _TypeCalendar(
                              x.toString(),
                              color: blue,
                            )
                          : _TypeCalendar(
                              x.toString(),
                              color: white,
                            ),
                    ],
                  ),
                  Column(
                    children: [
                      const _TypeCalendar(
                        'J',
                        fontSize: 15,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      j == DateTime.now().day
                          ? _TypeCalendar(
                              j.toString(),
                              color: blue,
                            )
                          : _TypeCalendar(
                              j.toString(),
                              color: white,
                            ),
                    ],
                  ),
                  Column(
                    children: [
                      const _TypeCalendar(
                        'V',
                        fontSize: 15,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      v == DateTime.now().day
                          ? _TypeCalendar(
                              v.toString(),
                              color: blue,
                            )
                          : _TypeCalendar(
                              v.toString(),
                              color: white,
                            ),
                    ],
                  ),
                  Column(
                    children: [
                      const _TypeCalendar(
                        'S',
                        fontSize: 15,
                        color: Color(0xFFEF2D2D),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      s == DateTime.now().day
                          ? _TypeCalendar(
                              s.toString(),
                              color: blue,
                            )
                          : _TypeCalendar(
                              s.toString(),
                              color: white,
                            ),
                    ],
                  ),
                  Column(
                    children: [
                      const _TypeCalendar(
                        'D',
                        fontSize: 15,
                        color: Color(0xFFEF2D2D),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      d == DateTime.now().day
                          ? _TypeCalendar(
                              d.toString(),
                              color: blue,
                            )
                          : _TypeCalendar(
                              d.toString(),
                              color: white,
                            ),
                    ],
                  ),
                ],
              )),
        ),
      ),
    );
  }
}

//TIPOGRAFIA A USAR EN EL WIDGET DE CALENDARIO SEMANAL
class _TypeCalendar extends StatelessWidget {
  const _TypeCalendar(this.text,
      {this.color = Colors.white, this.fontSize = 20});

  final String text;
  final Color? color;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.w800,
        color: color,
      ),
    );
  }
}
