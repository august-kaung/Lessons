import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:january/constant/color.dart';
import 'package:january/constant/dimes.dart';
import 'package:january/constant/strings.dart';
import 'package:january/easy_text_widget.dart';

void main() {
  runApp(const FP());
}

class FP extends StatelessWidget {
  const FP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: kFavColor,
        appBar: AppBar(
          title: const Text(
            'This is testing',
            style: TextStyle(color: Colors.amber),
          ),
          actions: const [
            Icon(Icons.search,
                size: 35),
            SizedBox(width: 30),
            Icon(Icons.shopping_bag,
                size: 35),
            SizedBox(width: 30),
            Icon(Icons.person,
                size: 35)
          ],
          backgroundColor: Colors.grey,
          elevation: 0,
        ),
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 90,left: kPadding),
              width: 150,
              color: kThirdColor,
              height: 100,
              child: const Center(
                child:  EasyTouchWidget(text: kText,col: Colors.red,fs: 22,fw: FontWeight.w200)
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            Container(
              width: 150,
              color: kSecondaryColor,
              height: 100,
              child:  const Center(
                child: EasyTouchWidget(text: kText)
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            Container(
              width: 150,
              color: kPrimaryColor,
              height: 100,
              child: const Center(
                child:  EasyTouchWidget(text: kText)
              ),
            ),
          ],
        ),
      ),
    );
  }
}
