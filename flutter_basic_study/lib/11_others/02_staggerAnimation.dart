import 'package:flutter/material.dart';
import 'dart:math';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stagger Animation Demo"),
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
  Animation? sizeAnimation;
  Animation? colorAnimation;
  Animation? rotationAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //1。创建AnimationController
    controller = AnimationController(
      duration: Duration(seconds: 3),
      vsync: this,
    );
    //2。创建A动画
    animation = CurvedAnimation(
      parent: controller!,
      curve: Interval(0.0, 0.5),
    )..addListener(() {
        setState(() {});
      });
    //3.让动画重复执行
    animation?.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        controller!.reverse();
      } else if (status == AnimationStatus.dismissed) {
        controller!.forward();
      }
    });
    //4.设置其他动画
    sizeAnimation = Tween(begin: 0.0, end: 200).animate(
      CurvedAnimation(
        parent: controller!,
        curve: Interval(0.0, 0.5),
      ),
    );
    colorAnimation = ColorTween(begin: Colors.yellow, end: Colors.red)
        .animate(CurvedAnimation(
      parent: controller!,
      curve: Interval(0.5, 0.8, curve: Curves.bounceIn),
    ))
      ..addListener(() {
        setState(() {});
      });

    rotationAnimation = Tween(begin: 0.0, end: 2 * pi).animate(CurvedAnimation(
      parent: controller!,
      curve: Interval(0.8, 1.0, curve: Curves.bounceIn),
    ))
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              controller!.forward();
            },
            child: Text('开始'),
          ),
          ElevatedButton(
            onPressed: () {
              controller!.stop();
            },
            child: Text('停止'),
          ),
          Opacity(
            opacity: controller!.value,
            child: Transform.rotate(
              angle: rotationAnimation!.value,
              child: Container(
                width: sizeAnimation?.value,
                height: sizeAnimation?.value,
                color: colorAnimation?.value,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    controller!.dispose();
  }
}
