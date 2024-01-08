import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groceries_app/Page/home_page.dart';
import 'package:lottie/lottie.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Padding(
            padding: const EdgeInsets.all(10),
            child: Lottie.network(
                'https://lottie.host/8b2109cf-0337-480a-a4fa-da0f59b41894/73cX3fnfgv.json',
                height: 250,
                width: 250)),

        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Text(
            'we deliver groceries at your doorstep',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontSize: 23,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        const Text(
          "Fresh items everyday",
          style: TextStyle(color: Colors.grey),
        ),

        const Spacer(),

        GestureDetector(
          onTap: () => Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) {
            return const HomePage();
          })),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.green[300],
                borderRadius: BorderRadius.circular(12)),
            padding: const EdgeInsets.all(20),
            child: const Text(
              'Get Started',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        const Spacer(),

        ///logo
        ///
        ///
      ]),
    );
  }
}
