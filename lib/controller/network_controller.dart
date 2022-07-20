import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testing/bloc/network/network_bloc.dart';

class NetworkController {

  static listenInternetConnection(BuildContext context) {
    Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
      if (result == ConnectivityResult.none) {
        BlocProvider.of<NetworkBloc>(context).add(CheckConnection(false));
      } else {
        BlocProvider.of<NetworkBloc>(context).add(CheckConnection(true));
      }
    });
  }
  
}

