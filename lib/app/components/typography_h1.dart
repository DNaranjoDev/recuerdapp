import 'package:flutter/material.dart';

class TypographyH1 extends StatelessWidget {
  const TypographyH1(
      this.text,
      {Key? key, this.color,}
      ) : super(key: key);

  final String text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(text,
      style:Theme.of(context).textTheme.bodyMedium?.copyWith(
        fontSize: 20,
        fontWeight: FontWeight.w800,
        color: color
      ),
    );
  }
}
