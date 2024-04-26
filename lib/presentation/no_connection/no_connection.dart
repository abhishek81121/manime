import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:manime/business/connection/bloc/connection_bloc.dart';

class Noconnection extends StatelessWidget {
  const Noconnection({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: BlocListener<ConnectionBloc, MyConnectionState>(
        listener: (context, state) {
          if (state is ConnectionSucess) {
            Navigator.pop(context);
          }
        },
        child: const Text("no internet Connection"),
      ),
    );
  }
}
