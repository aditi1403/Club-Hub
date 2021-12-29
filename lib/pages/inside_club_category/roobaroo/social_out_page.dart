// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialOut extends StatefulWidget {
  const SocialOut({Key? key}) : super(key: key);

  @override
  _SocialOutState createState() => _SocialOutState();
}

class _SocialOutState extends State<SocialOut> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      // backgroundColor: Colors.white,
      backgroundColor: const Color(0xFFC4FAE2),
      // backgroundColor: const Color(0xffffe88a),
      body: Column(
        children: [
          Container(
            height: 230,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(50),
              ),
              // color: Color(0xFF363f93),
              color: Color(0xFF138f5b),
              // color: Colors.black,
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 80,
                  left: 0,
                  child: Container(
                    height: 100,
                    width: 300,
                    decoration: const BoxDecoration(
                      // backgroundColor: const Color(0xffffe88a),
                      // color: Color(0xffd5e5f0),
                      // color: Colors.white,
                      color: Color(0xFFC4FAE2),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  top: 90,
                  left: 10,
                  child: Text(
                    "SOCIAL\nOUTREACH",
                    style: TextStyle(
                      fontSize: 40,
                      letterSpacing: 5,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'KolkerBrush',
                      // color: Color(0xFFee7f1c),
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: height*0.05,
          ),
          Container(
            height: 230,
            child: Stack(
              children: [
                Positioned(
                  top: 35,
                  left: 20,
                  child: Material(
                    child: Container(
                      height: 180.0,
                      width: width*0.9,
                      child: Text('COMING SOON',textAlign:TextAlign.center, style: TextStyle(fontSize: 70,),),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  Widget buildDivider() => Container(
    height: 24,
    child: const VerticalDivider(color: Color(0xFFC4FAE2),),
  );
}
