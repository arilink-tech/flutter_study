import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("首页"),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0.0,
        centerTitle: true,
      ),
      body: const HelloFlutter(),
    );
  }
}

class HelloFlutter extends StatelessWidget {
  const HelloFlutter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(
          child: Text(
        "Hello Flutter",
        textDirection: TextDirection.ltr,
      )),
    );
  }
}
