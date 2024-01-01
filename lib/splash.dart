import 'package:chatapp/Loginscreen.dart';
import 'package:flutter/material.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const LoginScreen(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 150,
              backgroundImage: AssetImage("assets/chatapp2.png"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "The Messenger ",
                  style: TextStyle(
                      color: Color(0xff034ea2),
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.messenger,
                  color: Color(0xff034ea2),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
