// ignore_for_file: prefer_const_constructors

import 'package:e_commmerce/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFADD8E6),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Padding(
              padding: EdgeInsets.all(50.0),
              child: Image.asset(
                'lib/images/Logo.png',
                height: 200,
              ),
            ),

            const SizedBox(height: 48),

            //title
            Text(
              'Just Buy It',
              style: GoogleFonts.lobster(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),

            //sub ttitle
            Text(
              'Your one stop shop for all your needs',
              style: GoogleFonts.acme(
                fontSize: 20,
                color: Colors.deepOrange,
                // fontWeight: FontWeight.bold,
              ),
            ),

            //dive in button

            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(100.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    padding: EdgeInsets.symmetric(
                      horizontal: 50,
                      vertical: 20,
                    ),
                    textStyle: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {},
                  child: Text('Dive In'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
