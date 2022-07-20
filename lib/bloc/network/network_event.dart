part of 'network_bloc.dart';

abstract class NetworkEvent {}

class CheckConnection extends NetworkEvent {
  bool isConnected;
  
  CheckConnection(this.isConnected);
}