import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GridViewCount/Extend Demo"),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0.0,
        centerTitle: true,
      ),
      body: GridViewBuilderDemo(),
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

class GridViewCountDemo extends StatelessWidget {
  const GridViewCountDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
        children: List.generate(
          10,
          (index) => Image.asset('images/macStudio.jpg'),
        ),
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        crossAxisCount: 2,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        childAspectRatio: 1.5, //容器的宽高比会根据此设定值压缩 图片则不会
      ),
    );
  }
}

class GridViewExtendDemo extends StatelessWidget {
  const GridViewExtendDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.extent(
        children: List.generate(
          10,
          (index) => Image.asset('images/macStudio.jpg'),
        ),
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        maxCrossAxisExtent: 180,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        //childAspectRatio: 1.5, //容器的宽高比会根据此设定值压缩 图片则不会
      ),
    );
  }
}

class GridViewBuilderDemo extends StatelessWidget {
  GridViewBuilderDemo({Key? key}) : super(key: key);
  final List<dynamic> _tiles = [
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
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
        ),
        itemCount: _tiles.length,
        itemBuilder: (context, index) {
          return _tiles[index];
        },
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        physics: BouncingScrollPhysics(), //反弹效果 windows 没有效果
        //physics: ClampingScrollPhysics(), //夹住效果 windows 没有效果
        //physics: AlwaysScrollableScrollPhysics(), //一直可以滚动
        //physics: NeverScrollableScrollPhysics(), //禁止滚动
        //childAspectRatio: 1.5, //容器的宽高比会根据此设定值压缩 图片则不会
      ),
    );
  }
}
