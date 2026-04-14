import 'package:flutter/material.dart';
import 'package:playezy/core/utills/app_assets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:playezy/core/utills/app_colors.dart';

class PhoneEntryScreen extends StatefulWidget {
  const PhoneEntryScreen({super.key});

  @override
  State<PhoneEntryScreen> createState() => _PhoneEntryScreenState();
}

class _PhoneEntryScreenState extends State<PhoneEntryScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          //bg image
          Positioned.fill(
            child: Image.asset(AppAssets.cricketBg, fit: BoxFit.cover),
          ),
          Positioned(
            top: 75,
            left: 24,
            child: Column(
              children: [
                //logo
                Container(
                  child: Image.asset(
                    AppAssets.logo,
                    width: AppAssets.logoWidth,
                    height: AppAssets.logoHeight,
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(height: 8),
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

          // Bottom container
          Positioned(
            top: 489,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.fromLTRB(
                20,
                20,
                20,
                MediaQuery.of(context).viewInsets.bottom + 20,
              ),
              decoration: const BoxDecoration(
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
                  // Header
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(bottom: 16),
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Color(0xFFE0E0E0), width: 1),
                      ),
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Text(
                          "Let’s Get Started",
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF0F0F0F),

                            fontWeight: FontWeight.w700,
                            fontFamily: 'Manrope-Bold',
                          ),
                        ),
                        Positioned(
                          right: 0,
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.close, size: 22),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 10),

                  Center(
                    child: Text(
                      "Enter your phone number to create your account.",
                      style: TextStyle(
                        color: Color(0xFF1D1A27),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Manrope-Regular',

                      ),
                    ),
                  ),

                  const SizedBox(height: 10),

                  Container(
                    padding: const EdgeInsets.only(
                      top: 10,
                      bottom: 10,
                      left: 24,
                      right: 24,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFFECECEC),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Phone Number",
                          style: TextStyle(fontSize: 12, color: Colors.black54),
                        ),

                        const SizedBox(height: 4),

                        Row(
                          children: [
                            const Text("🇱🇰", style: TextStyle(fontSize: 18)),
                            const SizedBox(width: 6),

                            const Text("+94", style: TextStyle(fontSize: 16)),

                            const Icon(Icons.keyboard_arrow_down, size: 18),

                            const SizedBox(width: 10),

                          
                          ],
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 20),

                  // Continue Button
                  SizedBox(
                    width: 380,
                    height: 60,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(),
                        padding: EdgeInsets.zero,
                      ),
                      onPressed: () {},
                      child: Ink(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: AppColors.btngradient,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Center(
                          child: Text(
                            "Continue",
                            style: TextStyle(
                              color: Colors.white,
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
