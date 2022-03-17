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
      body: Center(
          child: Column(
        children: [
          ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/product'),
              child: Text("跳转")),
          ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/product/1'),
              child: Text("商品1")),
          ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/product/2'),
              child: Text("商品2")),
          ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, 'user'),
              child: Text("未知路由")),
        ],
      )),
    );
  }
}

class Product extends StatelessWidget {
  const Product({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("商品页面"),
          leading: const Icon(Icons.menu),
          elevation: 0.0,
          centerTitle: true,
        ),
        body: Center(
          child: ElevatedButton(
            child: Text('返回'),
            onPressed: () => Navigator.pop(context),
          ),
        ),
      ),
    );
  }
}

class UnKnowPage extends StatelessWidget {
  const UnKnowPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("404"),
          leading: const Icon(Icons.menu),
          elevation: 0.0,
          centerTitle: true,
        ),
        body: Center(
          child: ElevatedButton(
            child: Text('返回'),
            onPressed: () => Navigator.pop(context),
          ),
        ),
      ),
    );
  }
}

class ProductDetail extends StatelessWidget {
  final String? id;

  const ProductDetail({Key? key, @required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("商品详情页"),
          leading: const Icon(Icons.menu),
          elevation: 0.0,
          centerTitle: true,
        ),
        body: Center(
            child: Column(
          children: [
            Text("当前商品的ID为:" + this.id!),
            ElevatedButton(
              child: Text('返回'),
              onPressed: () => Navigator.pop(context),
            ),
          ],
        )),
      ),
    );
  }
}
