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
           child: Column(
             children: [
               Container(
                       child: Image.asset(AppAssets.logo, width: AppAssets.logoWidth, height: AppAssets.logoHeight,
               fit: BoxFit.contain,),),
               const SizedBox(height: 8,),
                Text(
                  "Playezy",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    fontFamily: GoogleFonts.spaceGrotesk().fontFamily,
                  ),
                ),
             ],
           ),
         ),

          // Bottom contsiner
           
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 323,
              width: 420,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(46),
                  topRight: Radius.circular(46),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Header Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Let’s Get Started",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.close),
                      ),
                    ],
                  ),

                  const SizedBox(height: 10),

                  const Text(
                    "Enter your phone number to create your account.",
                    style: TextStyle(color: Colors.grey),
                  ),

                  const SizedBox(height: 20),

                  // Phone Input
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        // Flag (Sri Lanka example)
                        const Text("🇱🇰"),
                        const SizedBox(width: 8),

                        const Text(
                          "+94",
                          style: TextStyle(fontSize: 16),
                        ),

                        const Icon(Icons.arrow_drop_down),

                        const SizedBox(width: 10),

                        const Expanded(
                          child: TextField(
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              hintText: "Phone Number",
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Continue Button
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: EdgeInsets.zero,
                      ),
                      onPressed: () {},
                      child: Ink(
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              Colors.deepPurple,
                              Colors.purpleAccent,
                            ],
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Center(
                          child: Text(
                            "Continue",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

