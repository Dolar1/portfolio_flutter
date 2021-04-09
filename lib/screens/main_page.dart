import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:portfolio/common_widgets/logo_name.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'tabs/tabs.dart';

List<String> tabs = ["Me", "resume", "contact"];
List<Widget> screenWidgets = [IAmDolar(), Resume(), ContactMe()];

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int atTab = 0;

  void changePage(int index) {
    setState(() {
      atTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
      color: DARK_BG_COLOR,
      child: Stack(
        children: [
          Positioned(
            top: 35,
            left: 70,
            child: LogoName(),
          ),
          Column(
            children: [
              Container(
                height: 65,
                child: Center(
                  child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => InkWell(
                      onTap: () => changePage(index),
                      child: Container(
                        height: 65,
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            tabs[index].toUpperCase(),
                            style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                fontSize: 15,
                                fontWeight: index == atTab
                                    ? FontWeight.w900
                                    : FontWeight.w500,
                                color: index == atTab ? BLUE : TAB_BAR,
                                letterSpacing: .5,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    separatorBuilder: (context, index) =>
                        const SizedBox(width: 20),
                    itemCount: tabs.length,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 70.0),
                  child: Container(
                    width: double.infinity,
                    child: screenWidgets[atTab],
                  ),
                ),
              ),
              // const SizedBox(height: 10),
            ],
          ),
        ],
      ),
    );
  }
}
