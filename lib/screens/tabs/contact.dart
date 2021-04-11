import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/common_widgets/hover_effect.dart';
import 'package:portfolio/common_widgets/social_links.dart';
import 'package:portfolio/utils/colors.dart';

class ContactMe extends StatelessWidget {
  _launchURL(BuildContext context, String contactOn) async {
    await showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
      barrierColor: Colors.black45,
      transitionDuration: const Duration(milliseconds: 200),
      pageBuilder: (
        BuildContext buildContext,
        Animation animation,
        Animation secondaryAnimation,
      ) {
        double _width = MediaQuery.of(context).size.width;
        double _height = MediaQuery.of(context).size.height;

        return Material(
          type: MaterialType.transparency,
          child: Center(
            child: Container(
              width: _width * 0.35,
              height: _height * 0.4,
              decoration: BoxDecoration(
                color: DARK_BG_COLOR,
                borderRadius: BorderRadius.circular(20),
              ),
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  contactOn == "phone"
                      ? Expanded(
                          child: Align(
                            alignment: Alignment.center,
                            child: Center(
                              child: Text(
                                "I check my mails frequently\nLet's share our thoughts there\nProceeded by phone call..!",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.roboto(
                                  textStyle: TextStyle(
                                    fontSize: _width > 1500 ? 30 : 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                    letterSpacing: 1,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      : Expanded(
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "dolarsingh111@gmail.com",
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                  letterSpacing: 1.2,
                                ),
                              ),
                            ),
                          ),
                        ),
                  // Spacer(),
                  Expanded(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: GestureDetector(
                        onTap: () {
                          Clipboard.setData(
                            new ClipboardData(text: "dolarsingh111@gmail.com"),
                          );
                          Navigator.of(context).pop();
                        },
                        child: Container(
                          width: _width > 1500
                              ? (_width * 0.35) / 3
                              : (_width * 0.35) / 2,
                          height: 75,
                          decoration: BoxDecoration(
                            // color: BLUE,
                            borderRadius: BorderRadius.circular(30.0),
                            gradient: LinearGradient(
                              // Where the linear gradient begins and ends
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              // Add one stop for each color. Stops should increase from 0 to 1
                              stops: [0.1, 0.9],
                              colors: [
                                // Colors are easy thanks to Flutter's Colors class.
                                Color(0xff1d83ab),
                                Color(0xff0cbab8),
                              ],
                            ),
                          ),
                          child: Center(
                            child: TranslateOnHover(
                              child: Text(
                                contactOn != "phone"
                                    ? "Copy To Clipboard"
                                    : "Copy Email To Clipboard",
                                style: GoogleFonts.roboto(
                                  textStyle: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
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
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Container(
      color: BG_COLOR,
      child: Stack(
        children: [
          Positioned(
            left: 10,
            bottom: 0,
            child: SocialLinks(),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: GestureDetector(
              onTap: () => _launchURL(context, "phone"),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: DARK_BG_COLOR,
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Colors.white70,
                      Color(0xFFe3e7f0),
                      Color(0xFFd2d8e4)
                    ],
                  ),
                ),
                width: _width > 1500 ? 550 : 350,
                height: _width > 1500 ? 550 : 350,
                child: Row(
                  children: [
                    TranslateOnHover(
                      child: Image.asset("assets/Phone.png"),
                    ),
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => _launchURL(context, "mail"),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: DARK_BG_COLOR,
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Colors.white70,
                    Color(0xFFe3e7f0),
                    Color(0xFFd2d8e4)
                  ],
                ),
              ),
              width: _width > 1500 ? 500 : 350,
              height: _width > 1500 ? 500 : 350,
              child: Row(
                children: [
                  TranslateOnHover(
                    child: Image.asset("assets/Mailbox.png"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
