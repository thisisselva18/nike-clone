import 'package:e_commerce_app/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              //logo
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset('lib/images/nike.png', height: 270),
              ),

              const SizedBox(height: 60),
              //title
              Text(
                'Just Do It',
                style: GoogleFonts.dmSans(
                  color: Colors.black87,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),

              const SizedBox(height: 20),

              //subtitle
              Text(
                'For Brand new sneakers and custom kicks of Premium Quality',
                style: GoogleFonts.dmSans(color: Colors.black38, fontSize: 16),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 48),
              //start now button
              GestureDetector(
                onTap:
                    () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(16),
                  ),
                  padding: const EdgeInsets.all(25),
                  child: const Center(
                    child: Text(
                      'Shop Now',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
