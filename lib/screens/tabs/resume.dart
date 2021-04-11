import 'dart:html' as html;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/common_widgets/hover_effect.dart';
import 'package:portfolio/common_widgets/social_links.dart';
import 'package:portfolio/utils/colors.dart';

List<dynamic> _companies = [
  {
    "isPresent": true,
    "name": "Informatica",
    "logo": "infa.jpg",
    "position": "Data Operations Intern",
    "tools": [
      "Python",
      "Sql",
      "Parsing",
      "iics",
    ],
    "details":
        "I am part of GLOBAL CUSTOMER SUPPORT (GCS) team where my task revolves only around data",
    "more_details": "",
    "is_confedential": true,
    "work_link": ""
  },
  {
    "isPresent": false,
    "name": "1stMain",
    "logo": "main.png",
    "position": "Software Developer Intern",
    "tools": ["Nodejs", "Expressjs", "Flutter", "Firebase", "mongodb"],
    "details":
        "I was responsible for wrting and shipping 'RESPOSIBLE' flutter and node code to respective hostings",
    "more_details": "",
    "is_confedential": true,
    "work_link":
        "https://play.google.com/store/apps/details?id=com.masterlife.masterlife"
  },
  {
    "isPresent": false,
    "name": "1stMain",
    "logo": "main.png",
    "position": "Software Developer Intern",
    "tools": ["Nodejs", "Expressjs", "Flutter", "Firebase", "mongodb"],
    "details":
        "I was responsible for wrting and shipping 'RESPOSIBLE' flutter and node code to respective hostings",
    "more_details": "",
    "is_confedential": true,
    "work_link":
        "https://play.google.com/store/apps/details?id=com.masterlife.masterlife"
  }
];

class Resume extends StatefulWidget {
  @override
  _ResumeState createState() => _ResumeState();
}

class _ResumeState extends State<Resume> {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    PageController _scrollController = PageController();

    return Container(
      color: BG_COLOR,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            left: 10,
            bottom: 0,
            child: SocialLinks(),
          ),
          PageView.builder(
            controller: _scrollController,
            itemBuilder: (context, index) => Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: _width > 1500 ? 400 : 300,
                    height: 100,
                    child: Image.asset(_companies[index]["logo"]),
                  ),
                  (_width > 1500)
                      ? const SizedBox(height: 20)
                      : const SizedBox(height: 10),
                  Text(
                    "\"${_companies[index]["position"]}\"",
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w700,
                        color: BLUE,
                      ),
                    ),
                  )
                ],
              ),
            ),
            itemCount: _companies.length,
          ),
          Positioned(
            right: -10,
            top: _height / 2,
            child: MoveBackAndForth(
              direction: 1,
              onPres: () {
                _scrollController.nextPage(
                  duration: Duration(milliseconds: 500),
                  curve: Curves.easeIn,
                );
              },
            ),
          ),
          Positioned(
            left: -10,
            top: _height / 2,
            child: MoveBackAndForth(
              direction: 0,
              onPres: () {
                _scrollController.previousPage(
                  duration: Duration(milliseconds: 500),
                  curve: Curves.easeIn,
                );
              },
            ),
          ),
          Positioned(
            right: 10,
            top: 10,
            child: GestureDetector(
              onTap: () {
                html.window.open("assets/saurabh_singh_2021.pdf", "pdf");
              },
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: DARK_BG_COLOR,
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      // Colors.white70,
                      Color(0xFFe3e7f0),
                      Color(0xFFd2d8e4)
                    ],
                  ),
                ),
                width: _width > 1500 ? 250 : 150,
                height: _width > 1500 ? 250 : 150,
                child: Center(
                  child: TranslateOnHover(
                    child: Text(
                      "Download Resume",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                          fontSize: _width > 1500 ? 25 : 20,
                          fontWeight: FontWeight.w600,
                          color: BLUE,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MoveBackAndForth extends StatelessWidget {
  Function onPres;
  int direction;

  MoveBackAndForth({@required this.onPres, @required this.direction});
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    IconData _icon = direction == 0
        ? Icons.chevron_left_outlined
        : Icons.chevron_right_outlined;
    return Container(
      child: GestureDetector(
        onTap: onPres,
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: DARK_BG_COLOR,
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color(0xFFffd8e4),
                Color(0xFFe3e7f0),
                Colors.white70,
              ],
            ),
          ),
          width: _width > 1500 ? 100 : 75,
          height: _width > 1500 ? 100 : 75,
          child: Center(
            child: Stack(
              children: [
                Positioned(
                  left: 10,
                  child: Icon(
                    _icon,
                    size: 40,
                    color: Colors.black.withOpacity(0.6),
                  ),
                ),
                Icon(
                  _icon,
                  size: 40,
                  color: Colors.black.withOpacity(0.6),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
