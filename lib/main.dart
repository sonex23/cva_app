import 'package:cva_app/features/home/content_cubit.dart';
import 'package:cva_app/features/home/home_screen.dart';
import 'package:cva_app/features/intro_screen/intro_screen.dart';
import 'package:cva_app/features/main/main_screen.dart';
import 'package:cva_app/features/partner/partner_screen.dart';
import 'package:cva_app/features/splash_screen/splash_screen.dart';
import 'package:cva_app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ContentCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'CVA Application',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: {
          '/': (context) => const SplashScreen(),
          '/intro-screen': (context) => const IntroScreen(),
          '/home-screen': (context) => const HomeScreen(),
          '/main-screen': (context) => const MainScreen(),
          '/partner-screen': (context) => const PartnerScreen(),
        },
        initialRoute: '/',
      ),
    );
  }
}
