import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GridView Demo"),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0.0,
        centerTitle: true,
      ),
      body: GridViewDemo(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
        //backgroundColor: Colors.red,
        elevation: 1.0,
      ),
    );
  }
}

class GridViewDemo extends StatelessWidget {
  const GridViewDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child:
          //   GridView(
          //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //     crossAxisCount: 2,
          //     mainAxisSpacing: 20, //主轴方向间距（Y）
          //     crossAxisSpacing: 20, //交叉轴方向间距（X）
          //     childAspectRatio: 1.5, //子组件的宽高比
          //   ),
          //   children: [
          //     Container(
          //       color: Colors.red,
          //     ),
          //     Container(
          //       color: Colors.green,
          //     ),
          //     Container(
          //       color: Colors.black,
          //     ),
          //     Container(
          //       color: Colors.blue,
          //     ),
          //     Container(
          //       color: Colors.lightGreen,
          //     ),
          //     Container(
          //       color: Colors.lightBlue,
          //     ),
          //   ],
          // ),
          GridView(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 180, //子组件的宽度
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          childAspectRatio: 1.5,
        ),
        children: [
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.black,
          ),
          Container(
            color: Colors.blue,
          ),
          Container(
            color: Colors.lightGreen,
          ),
          Container(
            color: Colors.lightBlue,
          ),
        ],
      ),
    );
  }
}
