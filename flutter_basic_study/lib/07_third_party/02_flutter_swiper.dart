import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Swiper Demo"),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0.0,
        centerTitle: true,
      ),
      body: FlutterSwiperDemo(),
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

class FlutterSwiperDemo extends StatelessWidget {
  FlutterSwiperDemo({Key? key}) : super(key: key);
  final List<String> imgs = [
    'images/model3.jpg',
    'images/modelS.jpg',
    'images/modelY.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: 400,
          child: Swiper(
            itemCount: imgs.length,
            itemBuilder: (context, intex) {
              return Image.asset(
                imgs[intex],
                fit: BoxFit.cover,
              );
            },
            pagination: SwiperPagination(), //轮播图的指示点
            control: SwiperControl(), //轮播图的左右导航按钮
            autoplay: true,
          ),
        ),
        Spacer(10),
        Container(
          height: 400,
          child: Swiper(
            itemCount: imgs.length,
            itemBuilder: (context, intex) {
              return Image.asset(
                imgs[intex],
                fit: BoxFit.cover,
              );
            },
            viewportFraction: 0.7,
            autoplay: true,
            scale: 0.7,
          ),
        ),
        Container(
          height: 400,
          child: Swiper(
            itemCount: imgs.length,
            itemBuilder: (context, intex) {
              return Image.asset(
                imgs[intex],
                fit: BoxFit.cover,
              );
            },
            itemWidth: 300,
            layout: SwiperLayout.STACK,
            autoplay: true,
          ),
        ),
        Spacer(10),
        Container(
          height: 400,
          child: Swiper(
            itemCount: imgs.length,
            itemBuilder: (context, intex) {
              return Image.asset(
                imgs[intex],
                fit: BoxFit.cover,
              );
            },
            itemWidth: 300,
            itemHeight: 200,
            layout: SwiperLayout.TINDER,
            autoplay: true,
          ),
        ),
      ],
    );
  }
}
