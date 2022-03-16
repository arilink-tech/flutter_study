import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Button Demo"),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0.0,
        centerTitle: true,
      ),
      body: ButtonDemo(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
        backgroundColor: Colors.red,
        elevation: 0,
      ),
    );
  }
}

class ButtonDemo extends StatelessWidget {
  const ButtonDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Wrap(
        children: [
          TextButton(
            onPressed: () {
              print('点击Text Button');
            },
            onLongPress: () {
              print('长按Text Button');
            },
            child: const Text('Text Button'),
          ),
          ElevatedButton(
            onPressed: () {
              print('点击 Elevated Button');
            },
            onLongPress: () {
              print('长按 Elevated Button');
            },
            child: const Text('Elevated Button'),
          ),
          OutlinedButton(
            onPressed: () {
              print('点击 Outlined Button');
            },
            onLongPress: () {
              print('长按 Outlined Button');
            },
            child: const Text('Outlined Button'),
          ),
          OutlinedButton(
            onPressed: () {
              print('点击 Outlined Button');
            },
            onLongPress: () {
              print('长按 Outlined Button');
            },
            child: const Text('轮廓 Button'),
            style: ButtonStyle(
              textStyle: MaterialStateProperty.all(
                TextStyle(fontSize: 40),
              ),
              foregroundColor: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.pressed)) {
                  return Colors.red;
                }
                return Colors.blue;
              }),
              backgroundColor: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.pressed)) {
                  return Colors.yellow;
                }
                return Colors.white;
              }),
              shadowColor: MaterialStateProperty.all(Colors.yellow),
              elevation: MaterialStateProperty.all(15),
              side: MaterialStateProperty.all(BorderSide(
                color: Colors.lightBlue,
                width: 2,
              )),
              //shape声明按钮的形状
              shape: MaterialStateProperty.all(StadiumBorder(
                side: BorderSide(
                  color: Colors.lightGreen,
                  width: 2,
                ),
              )),
              minimumSize: MaterialStateProperty.all(Size(200, 100)),
              overlayColor: MaterialStateProperty.all(Colors.purple),
            ),
          ),
          OutlinedButtonTheme(
            data: OutlinedButtonThemeData(
                style: ButtonStyle(
              overlayColor: MaterialStateProperty.all(Colors.lightGreenAccent),
            )),
            child: OutlinedButton(
                onPressed: () {
                  print('点击 Outlined Button');
                },
                onLongPress: () {
                  print('长按 Outlined Button');
                },
                child: const Text('轮廓 Button'),
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(Colors.redAccent),
                )),
          ),
          IconButton(
            onPressed: () {
              print('Icon Button Pressed!');
            },
            //splashColor与highlightColor冲突 只能使用其中的一个
            splashColor: Colors.lightBlue,
            //highlightColor: Colors.red,
            tooltip: "怎么了",
            color: Colors.red,
            icon: Icon(Icons.abc),
          ),
          TextButton.icon(
            onPressed: () {
              print('Text Button Pressed!');
            },
            icon: Icon(Icons.add),
            label: Text('文本按钮'),
          ),
          ElevatedButton.icon(
            onPressed: () {
              print('Elevated Button Pressed!');
            },
            icon: Icon(Icons.add),
            label: Text('Elevated 按钮'),
          ),
          OutlinedButton.icon(
            onPressed: () {
              print('Outlined Button Pressed!');
            },
            icon: Icon(Icons.add),
            label: Text('Outlined 按钮'),
          ),
          Container(
            color: Colors.pink[100],
            width: double.infinity,
            child: ButtonBar(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text('按钮1'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('按钮2'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('按钮3'),
                ),
              ],
            ),
          ),
          BackButton(
            color: Colors.red,
            onPressed: () {},
          ),
          CloseButton(
            color: Colors.yellow,
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
