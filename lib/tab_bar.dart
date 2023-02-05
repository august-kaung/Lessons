import 'package:flutter/material.dart';

void main(){
  runApp(TabbBarr());
}
class TabbBarr extends StatelessWidget {
  const TabbBarr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('This is Tab Bar Testing'),
            bottom: TabBar(
              onTap: (index){},
              tabs: const [
                Center(
                  child: Tab(
                    text: 'Tab 1',
                    icon: Icon(Icons.home),
                  ),
                ),
                Center(
                  child: Tab(
                    text: 'Tab 2',
                    icon: Icon(Icons.search),
                  ),
                ),
                Center(
                  child: Tab(
                    text: 'Tab 3',
                    icon: Icon(Icons.person),
                  ),
                )
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              Center(child: Text('This is Tab One')),
              Center(child: Text('This is Tab Two')),
              Center(child: Text('This is Tab Three')),
            ],
          ),
        ),
      ),
    );
  }
}
