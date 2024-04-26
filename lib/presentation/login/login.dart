import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:manime/business/connection/bloc/connection_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    const imageurl = [
      'assets/login1.jpg',
      'assets/login2.jpeg',
      'assets/login3.jpeg',
      'assets/login4.jpg',
      'assets/login5.jpg',
      'assets/login7.jpg'
    ];

    final List<Widget> imageSliders = imageurl.map((item) {
      return Container(
        margin: const EdgeInsets.all(5.0),
        child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(5.0)),
            child: Stack(
              children: <Widget>[
                ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      item,
                      width: 1000,
                      fit: BoxFit.fill,
                    )),
              ],
            )),
      );
    }).toList();
    googleSingInProceure() async {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;
      try {
        final credential = GoogleAuthProvider.credential(
          accessToken: googleAuth?.accessToken,
          idToken: googleAuth?.idToken,
        );
        return FirebaseAuth.instance.signInWithCredential(credential);
      } catch (e) {
        return null;
      }
    }

    return BlocListener<ConnectionBloc, MyConnectionState>(
      listener: (context, state) {
        if (state is ConnectionFailure) {
          Navigator.of(context).pushNamed('/noConnection');
        }
      },
      listenWhen: (previous, current) =>
          previous is! ConnectionFailure && current is ConnectionFailure,
      child: Scaffold(
        body: SafeArea(child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          double height = constraints.maxHeight;
          return SizedBox(
            child: Column(
              children: [
                SizedBox(height: height * 0.05),
                CarouselSlider(
                    items: imageSliders,
                    options: CarouselOptions(
                      pauseAutoPlayOnTouch: false,
                      autoPlayAnimationDuration: const Duration(seconds: 2),
                      scrollPhysics: const NeverScrollableScrollPhysics(),
                      height: height * 0.3,
                      viewportFraction: 1,
                      autoPlay: true,
                      aspectRatio: 2.0,
                      enlargeCenterPage: true,
                    )),
                SizedBox(
                  height: height * 0.05,
                ),
                Image(
                  image: const AssetImage('assets/logo.png'),
                  height: height * 0.3,
                ),
                SizedBox(
                  height: height * 0.2,
                ),
                SizedBox(
                    width: width * 0.95,
                    height: height * 0.05,
                    child: FilledButton.tonal(
                        onPressed: () async {
                          UserCredential? singinresult =
                              await googleSingInProceure();
                          if (singinresult == null) {
                          } else {
                            Navigator.pushNamed(context, '/home');
                          }
                        },
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.login,
                              size: 30,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Google",
                              style: TextStyle(fontSize: 25),
                            ),
                          ],
                        )))
              ],
            ),
          );
        })),
      ),
    );
  }
}
