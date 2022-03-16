import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card Demo"),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0.0,
        centerTitle: true,
      ),
      body: CardDemo(),
    );
  }
}

class CardDemo extends StatelessWidget {
  const CardDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: Column(children: const [
            ListTile(
              leading: Icon(
                Icons.supervised_user_circle_rounded,
                size: 50,
              ),
              title: Text(
                '张三',
                style: TextStyle(color: Colors.red),
              ),
              subtitle: Text('董事长', style: TextStyle(color: Colors.red)),
            ),
            Divider(),
            ListTile(
              title: Text(
                '電話:155XXXXXXXX',
                style: TextStyle(color: Colors.red),
              ),
            ),
            ListTile(
              title: Text(
                '地址:XXXXXXXXX',
                style: TextStyle(color: Colors.red),
              ),
            ),
          ]),
        ),
        Card(
          margin: const EdgeInsets.all(40),
          color: Colors.purpleAccent[100],
          shadowColor: Colors.yellow,
          elevation: 10,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
              side: const BorderSide(
                color: Colors.yellow,
                width: 3,
              )),
          child: Column(children: const [
            ListTile(
              leading: Icon(
                Icons.supervised_user_circle_rounded,
                size: 50,
              ),
              title: Text(
                '张三',
                style: TextStyle(color: Colors.red),
              ),
              subtitle: Text('董事长', style: TextStyle(color: Colors.red)),
            ),
            Divider(),
            ListTile(
              title: Text(
                '電話:155XXXXXXXX',
                style: TextStyle(color: Colors.red),
              ),
            ),
            ListTile(
              title: Text(
                '地址:XXXXXXXXX',
                style: TextStyle(color: Colors.red),
              ),
            ),
          ]),
        )
      ],
    );
  }
}
