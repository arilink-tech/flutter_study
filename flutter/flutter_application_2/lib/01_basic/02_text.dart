import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Text"),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0.0,
        centerTitle: true,
      ),
      body: const TextDemo(),
    );
  }
}

class TextDemo extends StatelessWidget {
  const TextDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Hello Flutter xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
          textDirection: TextDirection.ltr,
          style: TextStyle(
              fontSize: 30,
              color: Colors.red,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic,
              decoration: TextDecoration.lineThrough,
              decorationColor: Colors.blue),
          textAlign: TextAlign.left,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
        ),
        RichText(
          text: const TextSpan(
              text: "Hello",
              style: TextStyle(fontSize: 40, color: Colors.red),
              children: [
                TextSpan(
                  text: "Flutter",
                  style: TextStyle(
                      fontSize: 40, color: Color.fromARGB(0xFF, 255, 255, 0)),
                ),
                TextSpan(
                  text: "你好世界",
                  style: TextStyle(fontSize: 40, color: Colors.green),
                )
              ]),
        )
      ],
    );
  }
}
