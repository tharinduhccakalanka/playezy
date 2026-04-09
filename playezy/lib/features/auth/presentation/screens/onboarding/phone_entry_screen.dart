import 'package:flutter/material.dart';
import 'package:playezy/core/utills/app_assets.dart';
import 'package:google_fonts/google_fonts.dart';

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
          child: Image.asset(AppAssets.cricketBg, fit: BoxFit.cover), 
        ),


         Positioned(
          top: 75,
          left: 24,
           child: Row(
             children: [
               Container(
                       child: Image.asset(AppAssets.logo, width: AppAssets.logoWidth, height: AppAssets.logoHeight,
               fit: BoxFit.contain,),),
               const SizedBox(height: 20,),
                Text("Playezy", style: GoogleFonts.spaceGrotesk(),),
             ],

           ),
         ),

        ],
      ),
    );
  }
}



