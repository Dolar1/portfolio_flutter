import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HelloName extends StatelessWidget {
  static String hi =
      "https://i.ibb.co/3BxmjPJ/240-F-240041620-9pyh-Vf-M7-TZ7a7-Zyura-N8rc-Pq-ZIZloq-En.png";
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
          top: 7,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Container(
              width: _width > 1500 ? _width * 0.15 : _width * 0.20,
              height: _height > 900 ? _height / 9 : _height / 8,
              child: SizedBox.shrink(),
            ),
          ),
        ),
        Card(
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Container(
            width: _width > 1500 ? _width * 0.15 : _width * 0.20,
            height: _height > 900 ? _height / 9 : _height / 8,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 70,
                  width: 70,
                  child: Image.network(hi),
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello, I am",
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Text(
                        "Saurabh",
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
