import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:randon_user_api/pages/my_home_page.dart';

import '_bindings/_binding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: Binding(),
      home: MyHomePage(),
    );
  }
}
