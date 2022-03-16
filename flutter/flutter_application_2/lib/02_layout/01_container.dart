import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Container Demo"),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0.0,
        centerTitle: true,
      ),
      body: const ContainerDemo(),
    );
  }
}

class ContainerDemo extends StatelessWidget {
  const ContainerDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Text(
        "Flutter是Google开源的构建用户界面（UI）工具包，帮助开发者通过一套代码库高效构建多平台精美应用，支持移动、Web、桌面和嵌入式平台。Flutter 开源、免费，拥有宽松的开源协议，适合商业项目。Flutter已推出稳定的2.0版本。",
        style: TextStyle(
          fontSize: 30,
        ),
      ),
      // width: 400,
      // height: 400,
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.all(5.0),
      margin: EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 20.0),
      alignment: Alignment.center,
      //transform: Matrix4.translationValues(10, 0, 0),
      //transform: Matrix4.rotationZ(0.1),
      transform: Matrix4.skewX(0.1),
      decoration: BoxDecoration(
          // border: Border(
          //   top: BorderSide(
          //     color: Colors.red,
          //     width: 10.0,
          //   ),
          //   bottom: BorderSide(
          //     color: Colors.red,
          //     width: 10.0,
          //   ),
          //   left: BorderSide(
          //     color: Colors.red,
          //     width: 10.0,
          //   ),
          //   right: BorderSide(
          //     color: Colors.red,
          //     width: 10.0,
          //   ),

          // ),
          border: Border.all(
            width: 10.0,
            color: Colors.blue,
          ),
          // borderRadius: BorderRadius.all(Radius.circular(30)),
          borderRadius: BorderRadius.only(topLeft: Radius.circular(30)),
          color: Colors.lightGreen[100],
          gradient: LinearGradient(colors: [
            Colors.lightBlue,
            Colors.white12,
          ])),
    );
  }
}
