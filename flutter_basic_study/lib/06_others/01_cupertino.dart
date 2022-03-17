import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cupertino Demo"),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0.0,
        centerTitle: true,
      ),
      body: MyBody(),
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

class MyBody extends StatelessWidget {
  const MyBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (Platform.isWindows) {
      print("Platform.isWindows");
    }
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          Text('Material - 安卓风格'),
          //安卓风格的组件
          MaterialDemo(),

          Text('Cupertino - ios风格'),
          CupertinoDemo(),
          //ios风格的组件
        ],
      ),
    );
  }
}

class MaterialDemo extends StatelessWidget {
  const MaterialDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AlertDialog(
        title: Text('提示'),
        content: Text('确认删除吗？'),
        actions: [
          TextButton(
            child: Text('取消'),
            onPressed: () {
              print('执行取消操作');
            },
          ),
          TextButton(
            child: Text('确认'),
            onPressed: () {
              print('执行确认操作');
            },
          ),
        ],
      ),
    );
  }
}

class CupertinoDemo extends StatelessWidget {
  const CupertinoDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CupertinoAlertDialog(
        title: Text('提示'),
        content: Text('确认删除吗？'),
        actions: [
          CupertinoDialogAction(
            child: Text('取消'),
            onPressed: () {
              print('执行取消操作');
            },
          ),
          CupertinoDialogAction(
            child: Text('确认'),
            onPressed: () {
              print('执行确认操作');
            },
          ),
        ],
      ),
    );
  }
}
