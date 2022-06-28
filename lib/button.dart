import 'package:flutter/material.dart';

class MyButton1 extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;
  final width;
  final height;
  final color;
  final radius = 15;
  final  clipBehavior;


  const MyButton1({
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
        borderRadius: BorderRadius.circular(10)
    ),
    child: MaterialButton(onPressed: (){
      onClicked();
    },

      color: color,
      child: Text(text,style: TextStyle(
          color: Colors.white
      ),

      ),
    ),
  );
}