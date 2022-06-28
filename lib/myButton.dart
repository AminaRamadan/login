import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;
  final width;
  final height;
  final color;
  final radius = 15;
  final  clipBehavior;


  const MyButton({
    required this.text,
    required this.onClicked, Key? key,
    this.width,
    this.height,
    this.color,
    this.clipBehavior,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
    width: width,
    height: height,
    clipBehavior: Clip.antiAliasWithSaveLayer,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15)
    ),
    child: MaterialButton(onPressed: (){
      onClicked();
    },
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 12),
      color: color,
      child: Text(text,

      ),
    ),
  );
}