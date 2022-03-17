import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LifeCircle Demo"),
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
  late int _num;
  @override
  void initState() {
    // TODO: implement initState
    print("init state");
    _num = 0;
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    print("didChangeDependencies");
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant MyState oldWidget) {
    // TODO: implement didUpdateWidget
    print("didUpdateWidget");
    super.didUpdateWidget(oldWidget);
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    print("deactivate");
    super.deactivate();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    print("dispose");
    super.dispose();
  }

  void _increment() {
    setState(
      () {
        print("setState");
        _num++;
      },
    );
  }

  void _decrement() {
    setState(
      () {
        print("setState");
        _num--;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    print("build");
    return Center(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Text('$_num'),
          ),
          ElevatedButton(onPressed: _increment, child: Icon(Icons.add)),
          ElevatedButton(onPressed: _decrement, child: Icon(Icons.mic_none))
        ],
      ),
    );
  }
}
