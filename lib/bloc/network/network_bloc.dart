import 'package:bloc/bloc.dart';

part 'network_event.dart';
part 'network_state.dart';

class NetworkBloc extends Bloc<NetworkEvent, NetworkState> {
  NetworkBloc() : super(NetworkState(isConnected: false)) {
    on<CheckConnection>(_checkConnection);
  }

  void _checkConnection(
    CheckConnection event,
    Emitter emit
  ) async {

    emit(state.copyWith(isConnected: event.isConnected));
  }
  
}
