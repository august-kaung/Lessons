import 'package:flutter/material.dart';

extension AddS on String{
  String addprmal(int val, {isTrue = true}) =>
      (val <= 1)
          ? this

          : (isTrue)
          ? '$this s'
          : '$this S';
}
extension ShowSnackBar on Widget{
  showSnackBar(BuildContext context,String text,Color Bgcolor,int duration){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text),
      backgroundColor: Bgcolor,
      duration: Duration(seconds: duration),));
  }
}