import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testing/controller/providers/store.dart';
import 'package:testing/modules/pages/list.dart';

void main() {
  runApp( Store(child: MyApp())); }

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: 'Flutter Demo',
      defaultTransition: Transition.noTransition,
      debugShowCheckedModeBanner: false,
      home: ListPage(),
    );
  }
}

