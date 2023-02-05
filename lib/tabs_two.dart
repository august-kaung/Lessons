
import 'package:flutter/material.dart';
import 'package:january/const.dart';
import 'const.dart';
class TabTestTwo extends StatefulWidget {
  const TabTestTwo({Key? key}) : super(key: key);

  @override
  State<TabTestTwo> createState() => _TabTestTwoState();
}

class _TabTestTwoState extends State<TabTestTwo> {
   String name=tabsName.first;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('This is appbar'),),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TabView(Tablist: tabsName ,onClick: (val){
            setState(
                (){
                  name=tabsName.elementAt(val);
                }
            );
          },),
          Center(child: BodyTabView(text: name,))
        ],
      ),
    );
  }
}

class BodyTabView extends StatelessWidget {
  const BodyTabView({
    Key? key,required this.text
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      color: Colors.red,

      child: Center(child: Text(text)),
    );
  }
}
/////////////////////////////////////////////
class TabView extends StatelessWidget {
  const TabView({
    Key? key,required this.Tablist,required this.onClick
  }) : super(key: key);
  final List<String> Tablist;
  final Function(int) onClick;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: Tablist.length,
      child: TabBar(
      onTap: (index){
        onClick(index);
      },
          labelColor: Colors.red,
          unselectedLabelColor: Colors.grey,
          indicatorColor: Colors.green,
          isScrollable: true,
        tabs: Tablist.map((e) => Tab(
          text: e,
        )).toList()
      ),
    );
  }
}
