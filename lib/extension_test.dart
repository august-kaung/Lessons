import 'package:flutter/material.dart';
import 'package:january/extension_test_two.dart';

class ExtensionTest extends StatelessWidget {
  const ExtensionTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold (
      body: Center(
        child: ETesting(val: 5),
      ),
    );
  }
}

class ETesting extends StatelessWidget {
  const ETesting({
    Key? key,required this.val
  }) : super(key: key);
  final int val;
  @override
  Widget build(BuildContext context) {
    return Text(
      ' $val Cat'.addprmal(val,isTrue: false)
    );
  }
}

