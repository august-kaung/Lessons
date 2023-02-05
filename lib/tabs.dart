
import 'package:flutter/material.dart';
import 'package:january/const.dart';


class TabTest extends StatefulWidget {
  const TabTest({Key? key}) : super(key: key);

  @override
  State<TabTest> createState() => _TabTestState();
}

class _TabTestState extends State<TabTest> {
  String name=tabsName.first;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Tab Bar'),
        ),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TabBarItemView(
              tabs: tabsName,
              onTap: (index){
                setState(() {
                  name=tabsName.elementAt(index);
                });
              },
            ),
            Expanded(child: BodyTabBarItemView(
              tabName: name,
            ))
          ],
        ),
      ),
    );
  }
}

class BodyTabBarItemView extends StatelessWidget {
  const BodyTabBarItemView({
    Key? key,
    required this.tabName
  }) : super(key: key);
  final String tabName;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(tabName,style: const TextStyle(
        fontSize: 34,
        fontWeight: FontWeight.w700
      ),),
    );
  }
}

class TabBarItemView extends StatelessWidget {
  const TabBarItemView({
    Key? key,
    required this.tabs,
    required this.onTap
  }) : super(key: key);
  final List<String>tabs;
  final Function(int) onTap;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: tabs.length,
        child: TabBar(
          onTap: (index){
         //   print('Index======> $index');
           onTap(index);
          },
          isScrollable: true,
          labelColor: Colors.green,
          unselectedLabelColor: Colors.grey,
          indicatorColor: Colors.red,
          tabs: tabs.map((name) => Tab(
            text: name,
          )).toList(),

        )
    );
  }
}
