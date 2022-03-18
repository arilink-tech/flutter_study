import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

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
      body: SwitchDemo(),
    );
  }
}

class SwitchDemo extends StatefulWidget {
  SwitchDemo({Key? key}) : super(key: key);

  @override
  State<SwitchDemo> createState() => _SwitchDemoState();
}

class _SwitchDemoState extends State<SwitchDemo> {
  bool _switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          ListTile(
            leading: Switch(
              value: _switchValue,
              onChanged: (bool val) {
                setState(() {
                  _switchValue = val;
                });
              },
              activeColor: Colors.orange, //激活颜色
              activeTrackColor: Colors.pink, //选中区域颜色
              inactiveTrackColor: Colors.grey, //未选中颜色
              inactiveThumbColor: Colors.blue[100], //圆点颜色
            ),
            title: Text('当前的状态是:${_switchValue == true ? "选中" : "未选中"}'),
          ),
          ListTile(
            leading: CupertinoSwitch(
              value: _switchValue,
              onChanged: (bool val) {
                setState(() {
                  _switchValue = val;
                });
              },
              //activeColor: Colors.orange,
            ),
            title: Text('当前的状态是:${_switchValue == true ? "选中" : "未选中"}'),
          )
        ],
      ),
    );
  }
}
