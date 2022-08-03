import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testing/bloc/network/network_bloc.dart';
import 'package:testing/components/app_bar.dart';

class FutureApp extends StatefulWidget {
  const FutureApp({Key? key}) : super(key: key);

  @override
  State<FutureApp> createState() => _FutureAppState();
}

class _FutureAppState extends State<FutureApp> {

  Future<List<String>> getData() async {
    await Future.delayed(Duration(seconds: 2));
    return ["1", "2", "3"];
  }
  
  @override
  Widget build(BuildContext context) {
    return MainBar(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Future App"),
              FutureBuilder(
                future: getData(),
                builder: (ctx, snapshot) {
                  return snapshot.connectionState == ConnectionState.waiting ? Text("Loading...") : Text("Data: ${snapshot.data}");
                }
              )
            ],
          ),
        )
      )
    );
  }
}