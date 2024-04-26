part of 'connection_bloc.dart';

sealed class MyConnectionState extends Equatable {
  const MyConnectionState();

  @override
  List<Object> get props => [];
}

final class ConnectionInitial extends MyConnectionState {}

class ConnectionSucess extends MyConnectionState {}

class ConnectionFailure extends MyConnectionState {}
