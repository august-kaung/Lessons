import 'package:flutter/material.dart';
import 'package:january/extension_test_two.dart';

class DrawerAndSnackBar extends StatelessWidget {
  const DrawerAndSnackBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                flex: 2,
                child: Container(
                  color: Colors.red,
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: Image.network(
                          'https://i.pinimg.com/originals/90/3c/b4/903cb4759245be7b63c29c447596e90f.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      const Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          '  This is drawer',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                              color: Colors.amber),
                        ),
                      )
                    ],
                  ),
                )),
            Expanded(
                flex: 4,
                child: SingleChildScrollView(
                  child: Container(
                    color: Colors.green,
                    child: Column(
                      children: [
                        ListTileItemView(ic: Icons.abc, text: 'One', onTap: () {
                          Navigator.of(context).pop();
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('This is Snackbar'),
                              backgroundColor: Colors.blueAccent,
                              duration: Duration(seconds: 2),),
                          );
                        },
                        ),
                        ListTileItemView(
                            ic: Icons.safety_check, text: 'Two', onTap: () {
                          Navigator.of(context).pop();
                          showSnackBar(context, 'SnackBar Two' , Colors.red, 3);
                        }),
                        ListTileItemView(ic: Icons.ac_unit_sharp,
                            text: 'Three',
                            onTap: () {}),
                        const Divider(thickness: 2,),
                        ListTileItemView(ic: Icons.baby_changing_station,
                            text: 'Four',
                            onTap: () {}),
                        ListTileItemView(ic: Icons.wallet_giftcard,
                            text: 'Five',
                            onTap: () {}),
                        ListTileItemView(ic: Icons.wallet_giftcard,
                            text: 'Five',
                            onTap: () {}),
                        ListTileItemView(ic: Icons.wallet_giftcard,
                            text: 'Five',
                            onTap: () {}),
                        ListTileItemView(ic: Icons.wallet_giftcard,
                            text: 'Five',
                            onTap: () {}),
                        ListTileItemView(ic: Icons.wallet_giftcard,
                            text: 'Five',
                            onTap: () {}),
                        ListTileItemView(ic: Icons.wallet_giftcard,
                            text: 'Five',
                            onTap: () {}),
                        ListTileItemView(ic: Icons.wallet_giftcard,
                            text: 'Five',
                            onTap: () {}),

                        ListTileItemView(ic: Icons.wallet_giftcard,
                            text: 'Five',
                            onTap: () {}),


                      ],
                    ),
                  ),
                )),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('This is AppBar'),
      ),
    );
  }
}

class ListTileItemView extends StatelessWidget {
  const ListTileItemView({
    Key? key, required this.ic, required this.text, required this.onTap
  }) : super(key: key);
  final IconData ic;
  final String text;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minLeadingWidth: 6,
      leading: Icon(ic),
      title: Text(text),
      onTap: () {
        onTap();
      },
    );
  }
}

