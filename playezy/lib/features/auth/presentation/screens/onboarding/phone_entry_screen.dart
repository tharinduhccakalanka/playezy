import 'package:flutter/material.dart';

class PhoneEntryScreen extends StatefulWidget {
  const PhoneEntryScreen({super.key});

  @override
  State<PhoneEntryScreen> createState() => _PhoneEntryScreenState();
}

class _PhoneEntryScreenState extends State<PhoneEntryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
Positioned.fill(
          child: Image.asset(
            'assets/images/cricket_bg.png', fit: BoxFit.cover,),
        ),
        ],
        
      )
    );
  }
}