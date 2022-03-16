import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stack 层叠布局 Demo"),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0.0,
        centerTitle: true,
      ),
      body: StackDemo(),
    );
  }
}

class StackDemo extends StatelessWidget {
  const StackDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        //textDirection: TextDirection.rtl, //未指定位置（Postion的）空间排列方式
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          const CircleAvatar(
            backgroundImage: NetworkImage(
                'https://img14.360buyimg.com/cms/jfs/t1/212845/7/14492/296401/6227c13aE327b4048/826fe4c308ec7c1f.jpg'),
            radius: 150,
          ),
          Positioned(
            child: Container(
              color: Colors.blue,
              padding: const EdgeInsets.all(5),
              child: const Text(
                '热卖',
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
            ),
            top: 100,
            right: 10,
          ),
          const Text(
            'Hello ',
            style: TextStyle(
              color: Colors.lightGreen,
            ),
          ),
        ],
      ),
    );
  }
}
