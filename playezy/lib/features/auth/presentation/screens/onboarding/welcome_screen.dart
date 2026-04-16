import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:playezy/core/utills/app_assets.dart';
import 'package:playezy/core/utills/app_colors.dart';
import 'package:playezy/features/auth/presentation/screens/onboarding/phone_entry_screen.dart' hide CustomButton;
import 'package:playezy/core/widgets/custom_button.dart'; 

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        
        children: [
          Positioned.fill(
            child: Image.asset(AppAssets.cricketBg, fit: BoxFit.cover),
          ),

          // Dark gradient overlay
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                
              ),
            ),
          ),

          SafeArea(
            child: Column(
              children: [
                const Spacer(),
                Transform.rotate(
                  angle: 6 * 3.1416 / 180,
                  child: Container(
                    width: 78.16,
                    height: 78.16,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.63),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x4DBEF500),
                          blurRadius: 39.08,
                          spreadRadius: -7.82,
                          offset: const Offset(0, 0),
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15.63),
                      child: Center(
                        child: SvgPicture.asset(
                          'assets/images/batball.svg',
                          width: 40,
                          height: 40,

                          colorFilter: const ColorFilter.mode(
                            Color(0xFF6C3FE8),
                            BlendMode.srcIn,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 16),

                const Text(
                  'Playezy',
                  style: TextStyle(
                    fontSize: 30.06,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: -1.5,
                    height: 36.07 / 30.06,
                    fontFamily: 'SpaceGrotesk',
                  ),
                ),

                const SizedBox(height: 24),

                const Text(
                  'Play. Relax. Repeat.',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                    fontFamily: 'Manrope-extrabold',
                  ),
                ),

                const SizedBox(height: 10),

                const Padding(

                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Text(
                    'Step away from the busy life and reconnect\nwith cricket, your friends, and yourself.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFFFFFFFF),
                      fontFamily: 'Manrope-Regular',
                      fontWeight: FontWeight.w400,
                    letterSpacing: 0.35,
                    ),
                  ),
                ),

                const SizedBox(height: 36),

                //Custom Button
               CustomButton(
  text: "Create Account",
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const PhoneEntryScreen(),
      ),
    );
  },
),
                
                const SizedBox(height: 20),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(color: Colors.white.withOpacity(0.4)),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Text(
                          'OR',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.6),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Divider(color: Colors.white.withOpacity(0.4)),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 16),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account? ',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.7),
                        fontSize: 14,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
