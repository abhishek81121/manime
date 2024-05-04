import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:manime/business/connection/bloc/connection_bloc.dart';
import 'package:manime/firebase_options.dart';
import 'package:manime/presentation/home/home.dart';
import 'package:manime/presentation/login/login.dart';
import 'package:manime/presentation/manga_info/manga_info.dart';
import 'package:manime/presentation/no_connection/no_connection.dart';

Future<void> main() async {
  await dotenv.load(fileName: ".env");
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    String initialroute = '/';
    if (FirebaseAuth.instance.currentUser != null) {
      initialroute = '/home';
    }
    return BlocProvider(
      create: (context) =>
          ConnectionBloc()..add(ConnectionListeningIntialize()),
      child: MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            appBarTheme: const AppBarTheme(
                backgroundColor: Color.fromARGB(255, 8, 142, 128)),
            filledButtonTheme: FilledButtonThemeData(
                style: FilledButton.styleFrom(
                    backgroundColor: const Color(0xFFff2c55))),
            colorScheme: ColorScheme.fromSeed(
              seedColor: const Color(0xFFff2c55),
              background: const Color.fromARGB(255, 29, 28, 28),
            ),
            useMaterial3: true,
          ),
          initialRoute: initialroute,
          routes: {
            '/': (context) => const LoginScreen(),
            '/home': (context) => const HomePage(),
            '/home/mangainfo': (context) => const MangaInfo(),
            '/noConnection': (context) => const Noconnection(),
          }),
    );
  }
}
