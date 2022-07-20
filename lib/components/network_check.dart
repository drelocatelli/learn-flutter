import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class NetworkChecker extends StatefulWidget {
  const NetworkChecker({Key? key}) : super(key: key);

  @override
  State<NetworkChecker> createState() => _NetworkCheckerState();
}

class _NetworkCheckerState extends State<NetworkChecker> {
  bool _isConnected = false;

  @override
  void initState() {
    super.initState();
  }

  _checkNetworkConnection() async {
    bool result = await InternetConnectionChecker().hasConnection;
    _isConnected = result;
    setState(() { });
  }
  

  @override
  Widget build(BuildContext context) {
    _checkNetworkConnection();

     return Container(
      padding: EdgeInsets.only(right: 10),
      child: Icon(Icons.fiber_manual_record, color: _isConnected ? Color.fromARGB(255, 57, 240, 63) : Colors.red),
     );
  }
}