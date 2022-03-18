import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form Demo"),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0.0,
        centerTitle: true,
      ),
      body: FormDemo(),
    );
  }
}

class FormDemo extends StatefulWidget {
  FormDemo({Key? key}) : super(key: key);

  @override
  State<FormDemo> createState() => _FormDemoState();
}

class _FormDemoState extends State<FormDemo> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Form(
            key: _formKey,
            child: Column(children: [
              TextFormField(
                decoration: InputDecoration(hintText: '手机号'),
                validator: (value) {
                  RegExp reg = new RegExp(r'^\d{11}$');
                  if (!reg.hasMatch(value!)) {
                    return '手机号非法';
                  }
                  return null;
                },
              ),
            ]),
          ),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  child: Text('提交'),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      print('提交成功');
                    }
                  },
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
