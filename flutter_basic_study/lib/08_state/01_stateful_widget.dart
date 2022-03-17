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
