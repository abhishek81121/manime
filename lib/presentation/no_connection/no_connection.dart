import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:manime/business/connection/bloc/connection_bloc.dart';

class Noconnection extends StatelessWidget {
  const Noconnection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PopScope(
        canPop: false,
        child: BlocListener<ConnectionBloc, MyConnectionState>(
          listener: (context, state) {
            if (state is ConnectionSucess) {
              Navigator.pop(context);
            }
          },
          child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(18.0),
                    child: Text(
                      "Oops! Something Went Wrong With The Internet Connection",
                      style: TextStyle(color: Color(0xFFe91e63), fontSize: 25),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Image.asset(
                    'assets/no-internet.png',
                    height: 300,
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
