import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("StatefulWidget Demo"),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0.0,
        centerTitle: true,
      ),
      body: MyState(),
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

class MyState extends StatefulWidget {
  const MyState({Key? key}) : super(key: key);

  @override
  State<MyState> createState() => _MyStateState();
}

class _MyStateState extends State<MyState> {
  int _num = 0;
  void _increment() {
    setState(
      () {
        _num++;
      },
    );
  }

  void _decrement() {
    setState(
      () {
        _num--;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ShareDataWidget(
      num: _num,
      child: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              // child: Text('$_num'),
              //跨组件访问数据
              child: MuCounter(),
            ),
            ElevatedButton(onPressed: _increment, child: Icon(Icons.add)),
            ElevatedButton(onPressed: _decrement, child: Icon(Icons.mic_none))
          ],
        ),
      ),
    );
  }
}

class MuCounter extends StatefulWidget {
  MuCounter({Key? key}) : super(key: key);

  @override
  State<MuCounter> createState() => _MuCounterState();
}

class _MuCounterState extends State<MuCounter> {
  @override
  Widget build(BuildContext context) {
    //使用InheritedWidget中的共享数据
    return Text(ShareDataWidget.of(context)!.num.toString());
  }
}

//数据共享组件
class ShareDataWidget extends InheritedWidget {
  final int? num;
  final Widget child;
  ShareDataWidget({Key? key, required this.child, @required this.num})
      : super(key: key, child: child);

  static ShareDataWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ShareDataWidget>();
  }

  @override
  bool updateShouldNotify(ShareDataWidget oldWidget) {
    return true;
  }
}
