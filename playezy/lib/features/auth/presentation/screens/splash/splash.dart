import 'package:flutter/material.dart';

import 'package:playezy/features/auth/presentation/screens/onboarding/welcome_screen.dart';


class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override

  void initState(){
    Future.delayed(const
    Duration (seconds:10 ),
    (){
      Navigator.push(context, MaterialPageRoute(builder: (context) => const WelcomeScreen()));
    });
    super.initState();
  } 

  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo.png',
            width: 52,
            height: 52,),
          ],
        ),
      ),
      
    );
  }
}