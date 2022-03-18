import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TextFiled Demo"),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0.0,
        centerTitle: true,
      ),
      body: TextFiledDemo(),
    );
  }
}

class TextFiledDemo extends StatefulWidget {
  TextFiledDemo({Key? key}) : super(key: key);

  @override
  State<TextFiledDemo> createState() => _TextFiledDemoState();
}

class _TextFiledDemoState extends State<TextFiledDemo> {
  String? phone;
  String? password;
  String? description;

  _register() {
    if (phone != null) {
      print('phone:' + phone!);
    }
    if (password != null) {
      print('password:' + password!);
    }
    if (description != null) {
      print('description:' + description!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Text("TextFiled Test"),
          TextField(
            autofocus: true,
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.mobile_screen_share),
              labelText: "手机号",
              hintText: "请输入手机号",
              hintStyle: TextStyle(
                color: Colors.green,
                fontSize: 16,
              ),
              //默认边框样式
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.yellow,
                ),
              ),
              //聚焦后的边框样式
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.green,
                  width: 2,
                ),
              ),
            ),
            onChanged: (value) {
              phone = value;
              print(phone);
            },
            maxLength: 11,
          ),
          TextField(
            obscureText: true,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.code_outlined),
              labelText: "密码",
              hintText: "请输入密码",
            ),
            onChanged: (value) {
              password = value;
            },
          ),
          TextField(
            maxLines: 5, //文本域 有多大的空间可供输入
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.code_outlined),
              labelText: "简介",
              hintText: "请介绍一下自己",
            ),
            onChanged: (value) {
              description = value;
            },
          ),
          //按钮
          Container(
            width: double.infinity,
            child: ElevatedButton(
              child: Text("提交"),
              onPressed: () {
                _register();
              },
            ),
          )
        ],
      ),
    );
  }
}
