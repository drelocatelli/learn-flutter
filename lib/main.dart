import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testing/controller/providers/store.dart';
import 'package:testing/modules/Home/pages/Home.dart';

void main() {
  runApp( Store(child: const MyApp())); }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

