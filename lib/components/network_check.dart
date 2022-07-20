import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:testing/bloc/network/network_bloc.dart';
import 'package:testing/controller/network_controller.dart';

class NetworkChecker extends StatefulWidget {
  const NetworkChecker({Key? key}) : super(key: key);

  @override
  State<NetworkChecker> createState() => _NetworkCheckerState();
}

class _NetworkCheckerState extends State<NetworkChecker> {
  @override
  void initState() {
    super.initState();
    NetworkController.listenInternetConnection(context); 
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NetworkBloc, NetworkState>(
      builder: (context, state) {
        print(state.isConnected);
        return Container(
          padding: EdgeInsets.only(right: 20),
          child: Icon(state.isConnected ? Icons.signal_wifi_4_bar : Icons.signal_wifi_off));
      },
    );
  }
}
