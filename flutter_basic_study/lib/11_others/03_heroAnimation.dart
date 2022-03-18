import 'package:flutter/material.dart';
import 'imageDetail.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HeroAnimation Demo"),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0.0,
        centerTitle: true,
      ),
      body: HeroAnimation(),
    );
  }
}

class HeroAnimation extends StatelessWidget {
  const HeroAnimation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.extent(
        maxCrossAxisExtent: 200,
        mainAxisSpacing: 20,
        padding: EdgeInsets.symmetric(vertical: 20),
        children: List.generate(20, (index) {
          String imageURL = "https://picsum.photos/id/$index/300/400";
          return GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext ctx) {
                return ImageDetail(imageURL);
              }));
            },
            child: Hero(
              child: Image.network(imageURL),
              tag: imageURL,
            ),
          );
        }),
      ),
    );
  }
}
