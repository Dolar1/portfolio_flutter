import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LogoName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RichText(
        text: new TextSpan(
          text: "Dol",
          style: GoogleFonts.monoton(
            textStyle: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w400,
              color: Colors.black,
              letterSpacing: .5,
            ),
          ),
          children: <TextSpan>[
            TextSpan(
              text: 'AR',
              style: GoogleFonts.vastShadow(
                textStyle: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  letterSpacing: .5,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
