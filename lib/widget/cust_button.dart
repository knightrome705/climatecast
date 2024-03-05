import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  String title;
  Color color;
  Color textcolor;
  final VoidCallback onPressed;
  MyButton({super.key, required this.title,required this.color,required this.textcolor,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          backgroundColor: color, minimumSize: const Size(330, 50)),
      child: Text(
        title,
        style:  TextStyle(color: textcolor, fontSize: 15),
      ),
    );
  }
}
