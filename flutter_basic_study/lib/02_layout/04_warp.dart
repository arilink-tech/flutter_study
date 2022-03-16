import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Warp Demo"),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0.0,
        centerTitle: true,
      ),
      body: WarpDemo(),
    );
  }
}

class WarpDemo extends StatelessWidget {
  final List<String> _list = [
    '曹操',
    '司马懿',
    '曹仁',
    '曹洪',
    '张辽',
    '许诸',
    '荀彧',
  ];
  List<Widget> _weiGuo() {
    return _list
        .map((e) => Chip(
              avatar: const CircleAvatar(
                backgroundColor: Colors.red,
                child: Text('魏'),
              ),
              label: Text(e),
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Wrap(
          children: _weiGuo(),
          spacing: 18.0,
          runSpacing: 10,
          alignment: WrapAlignment.spaceAround,
          runAlignment: WrapAlignment.spaceAround, //交叉轴方向的对齐方式
        ),
        Wrap(
          spacing: 18.0,
          runSpacing: 10,
          alignment: WrapAlignment.spaceAround,
          children: const [
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text('蜀'),
              ),
              label: Text('刘备'),
            ),
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text('蜀'),
              ),
              label: Text('关羽'),
            ),
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text('蜀'),
              ),
              label: Text('张飞'),
            ),
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text('蜀'),
              ),
              label: Text('诸葛亮'),
            ),
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text('蜀'),
              ),
              label: Text('黄忠'),
            ),
          ],
        )
      ],
    );
  }
}
