import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main(){
  runApp(const MaterialApp(
    home: UrlTest(),
  ));
}
class UrlTest extends StatelessWidget {
  const UrlTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TestingExtractWidget(
          name: 'Catherine',
          age: 'Thirteen',
          onTap: ()async{
              if(await canLaunchUrl(
                Uri.parse('https://youtu.be/1_9lP6uTWJU')
              )){
                launchUrl(
                  Uri.parse('https://youtu.be/1_9lP6uTWJU'),
                  mode: LaunchMode.externalApplication,
                );
              }else{
                print('URL is incorrect');
              }
          },
        ),
      ),
    );
  }
}

class TestingExtractWidget extends StatelessWidget {
  const TestingExtractWidget({
    Key? key,required this.name,required this.age,required this.onTap
  }) : super(key: key);
  final String name;
  final String age;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 400,
      color: Colors.grey ,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(name),
          Text(age),
          IconButton(onPressed: (){
            onTap();
          },
              icon: const Icon(Icons.play_circle))
        ],
      ),
    );
  }
}
