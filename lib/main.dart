import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testing/bloc/store.dart';
import 'package:testing/controller/providers/store.dart' as provider;
import 'package:testing/modules/pages/list.dart';

void main() {
  runApp( MyApp()); 
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Store(
      child: provider.Store(
        child: GetMaterialApp(
          title: 'Flutter Demo',
          defaultTransition: Transition.noTransition,
          debugShowCheckedModeBanner: false,
          home: ListPage(),
        ),
      ),
    );
  }
}

