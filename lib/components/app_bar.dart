import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:testing/components/network_check.dart';

class MainBar extends StatelessWidget {

  final Widget child;

  const MainBar({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("Testing"),
        actions: [
          NetworkChecker()
        ],
      ),
      body: child,
    );
  }
}