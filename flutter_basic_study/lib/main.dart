import 'package:flutter/material.dart';
//import '01_basic/01_hello.dart';
//import '01_basic/02_text.dart';
// import '02_layout/01_container.dart';
//import '02_layout/02_column_row.dart';
// import '02_layout/03_Flex.dart';
// import '02_layout/04_warp.dart';
// import '02_layout/05_stack.dart';
// import '02_layout/06_card.dart';
// import '03_buttton/01_button.dart';
// import '04_image/01_image.dart';
// import '05_list/01_singleChildScrollView.dart';
// import '05_list/02_listView.dart';
// import '05_list/03_gridView.dart';
// import '05_list/04_gridView.dart';
// import '06_others/01_cupertino.dart';
// import '07_third_party/01_dio.dart';
// import '07_third_party/02_flutter_swiper.dart';
import '07_third_party/03_shared_preferences.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      home: Home(),
      theme: ThemeData(fontFamily: 'Roboto'),
      debugShowCheckedModeBanner: false,
    );
  }
}

