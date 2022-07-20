part of 'network_bloc.dart';

class NetworkState {
  bool isConnected;

  NetworkState({required this.isConnected});

  NetworkState copyWith({
    bool? isConnected
  }) {
    return NetworkState(isConnected: isConnected ?? this.isConnected);
  }
}
