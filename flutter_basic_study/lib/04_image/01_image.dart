import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image Demo"),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0.0,
        centerTitle: true,
      ),
      body: ImageDemo(),
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

class ImageDemo extends StatelessWidget {
  const ImageDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //加载本地图片
        Image.asset(
          'images/iphone.jpg',
          width: double.infinity,
          //height: double.infinity,
          fit: BoxFit.fill,
        ),
        Image.network(
          'https://www.apple.com.cn/v/mac-studio/a/images/overview/hero/static_front__fmvxob6uyxiu_large.jpg',
          width: 400,
          repeat: ImageRepeat.repeatX,
          colorBlendMode: BlendMode.colorDodge,
          color: Colors.green,
        )
      ],
    );
  }
}
