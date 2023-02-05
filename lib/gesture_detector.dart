import 'package:flutter/material.dart';
void main(){
  runApp(const gestureDetectorTest());
}
class gestureDetectorTest extends StatefulWidget {
  const gestureDetectorTest({Key? key}) : super(key: key);

  @override
  State<gestureDetectorTest> createState() => _gestureDetectorTestState();
}

class _gestureDetectorTestState extends State<gestureDetectorTest> {
  bool isClickOff=true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        body: GestureDetector(
          onTap: (){
            setState(() {
              isClickOff=!isClickOff;
            });
          },
          child: Container(
            margin: const EdgeInsets.only(top: 250,left: 100),
            color: (isClickOff)?Colors.green:Colors.red,
            width: 200,
            height: 200,
            alignment: Alignment.center,
            child: Text((isClickOff)?'No Click':'Clicked',style: const TextStyle(
              fontSize: 40,
              color: Colors.black
            ),),
          ),
        ),
      ),
    );

  }
}
