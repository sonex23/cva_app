import 'package:cva_app/common/theme.dart';
import 'package:cva_app/features/home/home_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: const HomeScreen(),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(
                horizontal: 50,
                vertical: 18,
              ),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 243, 250, 250),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/icon_home.png',
                    width: 20,
                    color: kPrimaryColor,
                  ),
                  Image.asset(
                    'assets/icon_chat.png',
                    width: 20,
                    color: kPrimaryColor,
                  ),
                  Image.asset(
                    'assets/icon_speaker.png',
                    width: 20,
                    color: kPrimaryColor,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
