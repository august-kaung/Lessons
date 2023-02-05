import 'package:flutter/cupertino.dart';
import 'package:january/pages/first_page.dart';

void main(){
  runApp(const FT());
}
class FT extends StatelessWidget {
  const FT({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const FP();
  }
}
