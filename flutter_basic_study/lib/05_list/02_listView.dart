import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView Demo"),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0.0,
        centerTitle: true,
      ),
      body: ListViewDemo(),
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

class ListViewDemo extends StatelessWidget {
  const ListViewDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListViewBasic(),
          ListViewhorizontal(),
          ListViewBuilderDemo(),
          ListViewSeperatedDemo(),
        ],
      ),
    );
  }
}

class ListViewBasic extends StatelessWidget {
  const ListViewBasic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView(
        scrollDirection: Axis.vertical, //默认垂直分布
        children: const [
          ListTile(
            leading: Icon(
              Icons.abc_sharp,
              size: 50,
            ),
            title: Text('abc_sharp1'),
            subtitle: Text('sub title'),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          ListTile(
            leading: Icon(
              Icons.abc_sharp,
              size: 50,
            ),
            title: Text('abc_sharp2'),
            subtitle: Text('sub title'),
            trailing: Icon(Icons.keyboard_arrow_right),
            selected: true,
            selectedTileColor: Colors.lightBlue,
          ),
          ListTile(
            leading: Icon(
              Icons.abc_sharp,
              size: 50,
            ),
            title: Text('abc_sharp3'),
            subtitle: Text('sub title'),
            trailing: Icon(Icons.keyboard_arrow_right),
          )
        ],
      ),
    );
  }
}

class ListViewhorizontal extends StatelessWidget {
  const ListViewhorizontal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal, //跟scrollView一样 Windows下垂直滚动有效 水平滚动失效
        children: [
          Container(
            width: 160,
            color: Colors.amber,
          ),
          Container(
            width: 160,
            color: Colors.black,
          ),
          Container(
            width: 160,
            color: Colors.blue,
          ),
          Container(
            width: 160,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}

class ListViewBuilderDemo extends StatelessWidget {
  final List<Widget> users = new List<Widget>.generate(
    20,
    (index) => OutlinedButton(
      onPressed: () {},
      child: Text('姓名 $index'),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: ListView.builder(
        itemCount: users.length,
        itemExtent: 50,
        padding: EdgeInsets.all(10),
        itemBuilder: (context, index) {
          return users[index];
        },
      ),
    );
  }
}

class ListViewSeperatedDemo extends StatelessWidget {
  final List<Widget> products = List.generate(
    20,
    (index) => ListTile(
      leading: Icon(
        Icons.abc_sharp,
        size: 50,
      ),
      title: Text('商品标题 $index'),
      subtitle: Text('sub title'),
      trailing: Icon(Icons.keyboard_arrow_right),
    ),
  );
  @override
  Widget build(BuildContext context) {
    Widget dividerOdd = Divider(
      color: Colors.blue,
      thickness: 2,
    );

    Widget dividerEven = Divider(
      color: Colors.red,
      thickness: 2,
    );
    return Column(
      children: [
        ListTile(
          title: Text('商品列表'),
        ),
        Container(
          height: 200,
          child: ListView.separated(
            itemCount: 20,
            itemBuilder: (context, index) {
              return products[index];
            },
            //分割器的构造器
            separatorBuilder: (context, index) {
              // return Divider(
              //   color: Colors.blue,
              //   thickness: 2,
              // );
              return index % 2 == 0 ? dividerEven : dividerOdd;
            },
          ),
        )
      ],
    );
  }
}
