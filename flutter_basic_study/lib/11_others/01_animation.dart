import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animation Demo"),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0.0,
        centerTitle: true,
      ),
      body: AnimationDemo(),
    );
  }
}

class AnimationDemo extends StatefulWidget {
  AnimationDemo({Key? key}) : super(key: key);

  @override
  State<AnimationDemo> createState() => _AnimationDemoState();
}

class _AnimationDemoState extends State<AnimationDemo>
    with SingleTickerProviderStateMixin {
  AnimationController? controller;
  Animation? animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //1.创建AnimationController
    controller = AnimationController(
        duration: Duration(microseconds: 1000), vsync: this);
    //2.1声明动画曲线
    animation = CurvedAnimation(parent: controller!, curve: Curves.easeIn);
    //2.2设置动画值的范围
    animation = Tween(begin: 50.0, end: 400.0).animate(CurvedAnimation(
      parent: controller!,
      curve: Interval(0.0, 1.0, curve: Curves.bounceIn),
    ));
    //3.监听动画
    animation!.addListener(() {
      print(animation!.value);
      setState(() {});
    });
    //4.执行动画
    // controller!.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        ElevatedButton(
          onPressed: () {
            controller!.forward();
          },
          child: Text('放大'),
        ),
        ElevatedButton(
          onPressed: () {
            controller!.reverse();
          },
          child: Text('缩小'),
        ),
        ElevatedButton(
          onPressed: () {
            animation?.addStatusListener((status) {
              if (status == AnimationStatus.completed) {
                controller!.reverse();
              } else if (status == AnimationStatus.dismissed) {
                controller!.forward();
              }
            });
            controller!.forward();
          },
          child: Text('反复'),
        ),
        ElevatedButton(
          onPressed: () {
            controller!.stop();
          },
          child: Text('停止'),
        ),
        Icon(
          Icons.favorite,
          color: Colors.red,
          size: animation!.value,
        ),
        Opacity(
          opacity: controller!.value,
          child: Text('Hello world'),
        ),
      ]),
    );
  }

  @override
  void dispose() {
    super.dispose();
    controller!.dispose();
  }
}
