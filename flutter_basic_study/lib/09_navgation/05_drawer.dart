import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drawer Demo"),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Homepage(),
      drawer: DrawerList(), //左侧负一屏
      endDrawer: DrawerList(), //右侧负一屏
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

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text('Home')),
    );
  }
}

class DrawerList extends StatelessWidget {
  const DrawerList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(0),
        children: [
          //Text("Drawer"),
          UserAccountsDrawerHeader(
            accountName: Text('初六'),
            accountEmail: Text('root@arilink.com'),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/model3.jpg'),
                fit: BoxFit.cover, //背景图覆盖状态栏 Windows不生效
              ),
            ),
            currentAccountPicture:
                CircleAvatar(backgroundImage: AssetImage('images/modelY.jpg')),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('设置'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Divider(
            thickness: 2,
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('余额'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Divider(
            thickness: 2,
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('我的'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Divider(
            thickness: 2,
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('回退'),
            onTap: () => Navigator.pop(context),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          AboutListTile(
            child: Text('关于'),
            applicationName: 'Console',
            applicationVersion: '1.0.0',
            icon: CircleAvatar(
              child: Text('aaa'),
            ),
            applicationLegalese: '应用法律条款',
            aboutBoxChildren: [
              Text('条例1: xxxxxxx'),
              Text('条例2: xxxxxxx'),
              Text('条例3: xxxxxxx'),
              Text('条例4: xxxxxxx'),
            ],
            applicationIcon: Image.asset(
              "images/modelS.jpg",
              width: 50,
              height: 50,
            ),
          )
        ],
      ),
    );
  }
}
