// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'connection_bloc.dart';

sealed class ConnectionEvent extends Equatable {
  const ConnectionEvent();

  @override
  List<Object> get props => [];
}

class ConnectionListeningIntialize extends ConnectionEvent {}

class ConnectionChanged extends ConnectionEvent {
  MyConnectionState myConnectionState;
  ConnectionChanged({
    required this.myConnectionState,
  });
  @override
  List<Object> get props => [myConnectionState];
}
