import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Clender Demo"),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0.0,
        centerTitle: true,
      ),
      body: ClenderDemo(),
    );
  }
}

class ClenderDemo extends StatefulWidget {
  ClenderDemo({Key? key}) : super(key: key);

  @override
  State<ClenderDemo> createState() => _ClenderDemoState();
}

class _ClenderDemoState extends State<ClenderDemo> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
