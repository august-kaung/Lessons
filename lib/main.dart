import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:january/extension_test.dart';
import 'package:january/tabs.dart';
import 'package:january/tabs_two.dart';
import 'drawer_snackbar.dart';
void main(){
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false ,
    home: MyApp()
  ));
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DrawerAndSnackBar();
  }
}
