import 'package:flutter/material.dart';
import 'package:portfolio/common_widgets/hello_name_card.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/common_widgets/social_links.dart';

class IAmDolar extends StatefulWidget {
  @override
  _IAmDolarState createState() => _IAmDolarState();
}

class _IAmDolarState extends State<IAmDolar> {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    print(_width);
    print(_height);
    return Container(
      color: BG_COLOR,
      child: Stack(
        children: [
          Positioned(
            bottom: _height > 1000 ? -_height * 0.1 : -_height * 0.05,
            right: _width > 1500 ? _width * 0.3 : _width * 0.15,
            left: _width > 1500 ? _width * 0.3 : _width * 0.15,
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
                  )),
              width: _width > 1500 ? 800 : 500,
              height: _width > 1500 ? 800 : 500,
            ),
          ),
          Positioned(
            left: 10,
            bottom: 0,
            child: SocialLinks(),
          ),
          Positioned(
            left: _width > 1500 ? _width * 0.17 : _width * 0.10,
            top: _height > 900 ? _height * 0.40 : _height * 0.25,
            child: HelloName(),
          ),
          Positioned(
              right: _width > 1500 ? _width * 0.15 : 20,
              top: _height > 900 ? _height * 0.20 : 25,
              child: CircleAvatar(
                radius: _width > 1500 ? 110 : 90.0,
                backgroundImage: NetworkImage(
                  "https://i.ibb.co/3pbCF3q/Laptop-with-program-code-isometric-icon-software-development-and-programming-applications-dark-neon.jpg",
                ),
                backgroundColor: Colors.transparent,
              )),
          Center(
            child: Container(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.network(
                    "https://i.ibb.co/mJsKxSY/IMG-0967-prev-ui.png",
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
