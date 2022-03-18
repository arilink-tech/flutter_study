import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<BottomNavigationBarItem> bottomNavItems = [
    BottomNavigationBarItem(
      backgroundColor: Colors.black,
      icon: Icon(Icons.home),
      label: '首页',
    ),
    BottomNavigationBarItem(
      backgroundColor: Colors.red,
      icon: Icon(Icons.message),
      label: '消息',
    ),
    BottomNavigationBarItem(
      backgroundColor: Colors.lightBlue,
      icon: Icon(Icons.shopping_cart),
      label: '购物车',
    ),
    BottomNavigationBarItem(
      backgroundColor: Colors.lightGreen,
      icon: Icon(Icons.person),
      label: '我的',
    )
  ];
  final Widget pages = [
    Center(
      child: Text(
        'Home',
        style: TextStyle(fontSize: 50),
      ),
    ),
    Center(
      child: Text(
        'Message',
        style: TextStyle(fontSize: 50),
      ),
    ),
    Center(
      child: Text(
        'Cart',
        style: TextStyle(fontSize: 50),
      ),
    ),
    Center(
      child: Text(
        'Profile',
        style: TextStyle(fontSize: 50),
      ),
    ),
  ] as Widget;
  late int currentIndex;

  @override
  @override
  void initState() {
    super.initState();
    currentIndex = 0;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom Navigation Demo"),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0.0,
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: bottomNavItems,
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          _changePage(index);
        },
      ),
      body: (pages as Widget)[currentIndex],
    );
  }

  void _changePage(int index) {
    if (index != currentIndex) {
      setState(() {
        currentIndex = index;
      });
    }
  }
}
