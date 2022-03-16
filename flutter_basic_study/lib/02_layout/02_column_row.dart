import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Column Row Demo"),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0.0,
        centerTitle: true,
      ),
      body: const ColumnRowDemo(),
    );
  }
}

class ColumnRowDemo extends StatelessWidget {
  const ColumnRowDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.lightGreen,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween, //默认对齐 Y轴
          crossAxisAlignment: CrossAxisAlignment.center, //交叉轴对齐
          children: [
            const Icon(
              Icons.alarm,
              size: 50,
            ),
            const Icon(
              Icons.back_hand,
              size: 50,
            ),
            const Icon(
              Icons.cabin,
              size: 50,
            ),
            const Icon(
              Icons.dangerous,
              size: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Icon(
                  Icons.alarm,
                  size: 50,
                ),
                Icon(
                  Icons.back_hand,
                  size: 50,
                ),
                Icon(
                  Icons.cabin,
                  size: 50,
                ),
                Icon(
                  Icons.dangerous,
                  size: 50,
                ),
              ],
            )
          ]),
    );
  }
}
