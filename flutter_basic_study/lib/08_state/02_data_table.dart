import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DataTable Demo"),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0.0,
        centerTitle: true,
      ),
      body: UserList(),
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

class User {
  String name;
  int age;
  bool selected;
  User(this.name, this.age, {this.selected = false});
}

class UserList extends StatefulWidget {
  UserList({Key? key}) : super(key: key);

  @override
  State<UserList> createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  List<User> data = [
    User('张三', 18),
    User('李四', 28),
    User('王五', 38),
    User('赵六', 48, selected: true),
  ];
  List<dynamic> _getUserRows() {
    List<DataRow> dataRows = [];
    for (int i = 0; i < data.length; i++) {
      dataRows.add(
        DataRow(cells: [
          //DataCell(Text('${data[i].name}')),
          //DataCell(Text('${data[i].age}')),
          DataCell(Text('男')),
          DataCell(Text('---')),
        ]),
      );
    }
    return dataRows;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: DataTable(
          columns: const [
            DataColumn(label: Text('姓名')),
            DataColumn(label: Text('年龄')),
            DataColumn(label: Text('性别')),
            DataColumn(label: Text('简介')),
          ],
          //rows: _getUserRows(),
          rows: const [
            DataRow(
              cells: [
                DataCell(Text('张三')),
                DataCell(Text('18')),
                DataCell(Text('男')),
                DataCell(Text('一个靓仔')),
              ],
            ),
            DataRow(
              cells: [
                DataCell(Text('张三')),
                DataCell(Text('18')),
                DataCell(Text('男')),
                DataCell(Text('一个靓仔')),
              ],
            ),
            DataRow(
              cells: [
                DataCell(Text('张三')),
                DataCell(Text('18')),
                DataCell(Text('男')),
                DataCell(Text('一个靓仔')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
