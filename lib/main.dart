import 'package:flutter/material.dart';

import 'dashboard/menu_dashboard_layout.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Questrial',
        primarySwatch: Colors.blue,
      ),
      home: MenuDashBoard(),
    );
  }
}
