import 'package:flutter/material.dart';
import 'dashboard_screen.dart';
import 'home_screen.dart';
import 'mesagge_screen.dart';
import 'profil_screen.dart';
import 'spalsh_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/dashboard': (context) => const Dashboard(),
        '/home': (context) => const HomeScreen(),
        '/message': (context) => const MessageScreen(),
        '/profile': (context) => const ProfilScreen(),
      },
    );
  }
}
