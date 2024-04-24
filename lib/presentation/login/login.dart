import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

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
      'https://images4.alphacoders.com/973/thumbbig-973967.jpg',
      'https://images4.alphacoders.com/134/thumbbig-1342060.jpeg',
      'https://images8.alphacoders.com/133/thumbbig-1332278.jpeg',
      'https://wallpaperaccess.com/full/7825048.jpg',
      'https://wallpaperaccess.com/full/1474769.jpg',
      'https://images4.alphacoders.com/987/thumbbig-987919.jpg',
      'https://images7.alphacoders.com/134/thumbbig-1342989.png',
      'https://images5.alphacoders.com/744/thumbbig-744908.jpg',
      'https://wallpaperaccess.com/full/881668.jpg',
      'https://wallpaperaccess.com/full/9238211.png'
    ];

    final List<Widget> imageSliders = imageurl.map((item) {
      CachedNetworkImage(
        imageUrl: item,
      );
      return Container(
        margin: const EdgeInsets.all(5.0),
        child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(5.0)),
            child: Stack(
              children: <Widget>[
                ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image(
                        image: CachedNetworkImageProvider(item),
                        fit: BoxFit.cover,
                        width: 1000.0)),
              ],
            )),
      );
    }).toList();
    googleSingInProceure() async {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      return FirebaseAuth.instance.signInWithCredential(credential);
    }

    return Scaffold(
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
                        await googleSingInProceure();
                        Navigator.pushNamed(context, '/home');
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
    );
  }
}
