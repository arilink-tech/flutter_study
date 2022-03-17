import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:dio/dio.dart';
import 'dart:io';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dio Demo"),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0.0,
        centerTitle: true,
      ),
      body: DioDemo(),
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

class DioDemo extends StatelessWidget {
  const DioDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: Text('点击发送请求'),
        onPressed: () {
          print('发送Http请求');
          getIpAddress();
        },
      ),
    );
  }

  void getIpAddress() async {
    try {
      const url = "https://httpbin.org/ip";
      Response response = await Dio().get(url);
      String ip = response.data['origin'];
      print(ip);
    } catch (e) {
      print(e);
    }
  }
}
