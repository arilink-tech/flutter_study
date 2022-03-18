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
// import '07_third_party/03_shared_preferences.dart';
// import '08_state/01_stateful_widget.dart';
// import '08_state/02_data_table.dart';
// import '08_state/03_InheritedWidget.dart';
// import '08_state/04_life_circle.dart';
// import '08_state/05_provider.dart';
// import '09_navgation/01_anonymous.dart';
// import '09_navgation/02_namedroute.dart';
// import '09_navgation/03_onGenerateRoute.dart';
// import '09_navgation/04_arguments.dart';
// import '09_navgation/05_drawer.dart';
// import '09_navgation/06_bootomNavigationBar.dart';
// import '09_navgation/07_tab.dart';
// import '10_form/01_switch.dart';
// import '10_form/02_checkBox.dart';
// import '10_form/03_radio.dart';
// import '10_form/04_textField.dart';
// import '10_form/05_calendar.dart';
// import '10_form/06_form.dart';
import '10_form/07_form.dart';

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
      //命名路由
      // routes: {
      //   'home': ((context) => Home()),
      //   'product': ((context) => Product()),
      //   'productDetail': ((context) => ProductDetail()),
      // },
      // initialRoute: 'home',
      // onUnknownRoute: (RouteSettings setting) =>
      //     MaterialPageRoute(builder: (context) => UnKnowPage()),
      //动态路由
      // onGenerateRoute: (RouteSettings setting) {
      //   print(setting.name);
      //   if (setting.name == '/')
      //     return MaterialPageRoute(builder: (context) => Home());
      //   if (setting.name == '/product')
      //     return MaterialPageRoute(builder: (context) => Product());
      //   //匹配 /product/:id
      //   var uri = Uri.parse(setting.name!);
      //   print(uri.pathSegments);
      //   if (uri.pathSegments.length == 2 &&
      //       uri.pathSegments.first == 'product') {
      //     var id = uri.pathSegments[1];
      //     return MaterialPageRoute(builder: (context) => ProductDetail(id: id));
      //   }
      //   return MaterialPageRoute(builder: (context) => UnKnowPage());
      // },
      theme: ThemeData(fontFamily: 'Roboto'),
      debugShowCheckedModeBanner: false,
    );
  }
}
