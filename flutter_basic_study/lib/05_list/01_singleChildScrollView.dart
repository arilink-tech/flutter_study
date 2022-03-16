import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Single Child Scroll View Demo"),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0.0,
        centerTitle: true,
      ),
      body: SingleChildScrollViewDemo(),
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

class SingleChildScrollViewDemo extends StatelessWidget {
  const SingleChildScrollViewDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //验证水平滚动  windows下Row水平滚动无效
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.all(10),
          reverse: true,
          child: Row(
            children: [
              OutlinedButton(
                onPressed: () {},
                child: Text('按钮1'),
              ),
              OutlinedButton(
                onPressed: () {},
                child: Text('按钮2'),
              ),
              OutlinedButton(
                onPressed: () {},
                child: Text('按钮3'),
              ),
              OutlinedButton(
                onPressed: () {},
                child: Text('按钮4'),
              ),
              OutlinedButton(
                onPressed: () {},
                child: Text('按钮5'),
              ),
              OutlinedButton(
                onPressed: () {},
                child: Text('按钮6'),
              ),
            ],
          ),
        ),
        //windows下Column竖直滚动有效
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.all(10),
          reverse: false, //windows下reverse无效
          physics: BouncingScrollPhysics(), //windows下弹跳无效
          child: Column(
            children: List.generate(
              100,
              (index) => OutlinedButton(
                onPressed: () {},
                child: Text('按钮$index'),
              ),
            ),
          ),
        )
      ],
    );
  }
}
