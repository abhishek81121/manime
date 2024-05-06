import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:manime/data/repository/auth_init/auth_init_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<AuthEvent>((event, emit) async {
      emit(AuthLoading());
      const storage = FlutterSecureStorage();

      if (await storage.read(key: 'access_token') != null &&
          await storage.read(key: 'access_token') != "") {
        add(AuthInitialize());
      } else {}
    });
    on<AuthInitialize>(
      (event, emit) {
        AuthInit authInit = AuthInit();
        authInit.authinit();
        emit(AuthDone());
      },
    );
  }
}
