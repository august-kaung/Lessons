import 'package:flutter/cupertino.dart';


class EasyTouchWidget extends StatelessWidget {
  const EasyTouchWidget({Key? key,this.col,required this.text,this.fs=15,this.fw}) ;
  final String text;
  final  double fs;
  final  FontWeight ? fw;
  final  Color ? col;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: col,
          fontSize: fs,
          fontWeight: fw),

    );
  }
}
