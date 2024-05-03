import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

part 'connection_event.dart';
part 'connection_state.dart';

class ConnectionBloc extends Bloc<ConnectionEvent, MyConnectionState> {
  ConnectionBloc() : super(ConnectionInitial()) {
    on<ConnectionListeningIntialize>((event, emit) {
      InternetConnection.createInstance(
        customCheckOptions: [
          InternetCheckOption(uri: Uri.parse('https://google.com')),
        ],
      ).onStatusChange.listen((InternetStatus status) {
        switch (status) {
          case InternetStatus.connected:
            add(ConnectionChanged(myConnectionState: ConnectionSucess()));
            break;
          case InternetStatus.disconnected:
            add(ConnectionChanged(myConnectionState: ConnectionFailure()));
            break;
        }
      });
    });
    on<ConnectionChanged>(
      (event, emit) {
        emit(event.myConnectionState);
      },
    );
  }
}
