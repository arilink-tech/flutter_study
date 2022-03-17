import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //2 创建Provider(注册数据模型)
    return ChangeNotifierProvider(
      create: (BuildContext context) => new LikesModel(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Provider Demo"),
          leading: const Icon(Icons.menu),
          actions: const [Icon(Icons.settings)],
          elevation: 0.0,
          centerTitle: true,
        ),
        body: MyHomepage(),
      ),
    );
  }
}

//创建数据模型
class LikesModel extends ChangeNotifier {
  int _counter = 0;

  int get counter => _counter;
  incrementCounter() {
    print("_counter++");
    _counter++;
    notifyListeners();
  }

  //通知UI更新
  @override
  void notifyListeners() {
    // TODO: implement notifyListeners
    super.notifyListeners();
  }
}

class MyHomepage extends StatelessWidget {
  const MyHomepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '${context.watch<LikesModel>().counter}',
        ),
        TextButton(
            onPressed: Provider.of<LikesModel>(context).incrementCounter,
            child: Icon(Icons.thumb_up))
      ],
    );
  }
}
