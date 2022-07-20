import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testing/bloc/network/network_bloc.dart';
import 'package:testing/components/network_check.dart';

class MainBar extends StatefulWidget {
  final Widget child;

  const MainBar({Key? key, required this.child}) : super(key: key);

  @override
  State<MainBar> createState() => _MainBarState();
}

class _MainBarState extends State<MainBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("Testing"),
        actions: [NetworkChecker()],
      ),
      body: widget.child,
    );
  }
}
