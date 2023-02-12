import 'package:cva_app/features/home/home_screen.dart';
import 'package:cva_app/features/intro_screen/intro_screen.dart';
import 'package:cva_app/features/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CVA Application',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => const SplashScreen(),
        '/intro-screen': (context) => const IntroScreen(),
        '/home-screen': (context) => const HomeScreen(),
      },
      initialRoute: '/',
    );
  }
}
