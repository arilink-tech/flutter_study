import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SharedPreference Demo"),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0.0,
        centerTitle: true,
      ),
      body: SharedPreferenceDemo(),
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

class SharedPreferenceDemo extends StatelessWidget {
  SharedPreferenceDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: _incrementCounter,
            child: Text('递增'),
          ),
          ElevatedButton(
            onPressed: _decrementCounter,
            child: Text('递减'),
          ),
          ElevatedButton(
            onPressed: _removeCounter,
            child: Text('删除'),
          ),
          ElevatedButton(
            onPressed: _addMyCounter,
            child: Text('增加字符串'),
          ),
          ElevatedButton(
            onPressed: _getMyCounter,
            child: Text('获取字符串'),
          ),
          ElevatedButton(
            onPressed: _clearCounter,
            child: Text('清空所有'),
          ),
        ],
      ),
    );
  }

  _incrementCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int counter = (prefs.getInt('counter') ?? 0) + 1;
    print('Pressed $counter times');
    await prefs.setInt('counter', counter);
  }

  _decrementCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int counter = (prefs.getInt('counter') ?? 0);
    if (counter > 0) {
      counter--;
    }
    print('Pressed $counter times');
    await prefs.setInt('counter', counter);
  }

  _removeCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('counter');
    int counter = (prefs.getInt('counter') ?? 0);
    print('Pressed $counter times');
  }

  _addMyCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('Hi', "hello flutter");
    String counter = (prefs.getString('Hi') ?? "");
    print('设置字符串的内容是 $counter');
  }

  _getMyCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String counter = (prefs.getString('Hi') ?? "null");
    print('获取字符串的内容是 $counter');
  }

  _clearCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }
}
