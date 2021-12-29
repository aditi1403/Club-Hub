// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class DotSlash extends StatefulWidget {
  const DotSlash({Key? key}) : super(key: key);

  @override
  _DotSlashState createState() => _DotSlashState();
}

class _DotSlashState extends State<DotSlash> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      // backgroundColor: Colors.white,
      backgroundColor: const Color(0xfff3eeea),
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
              color: Color(0xFFFAA456),
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
                      color: Color(0xfff3eeea),
                      // color: Color(0xffffe88a),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  top: 90,
                  left: 15,
                  child: Text(
                    "Dot Slash",
                    style: TextStyle(
                      fontSize: 73,
                      letterSpacing: 5,
                      fontWeight: FontWeight.w600,
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
                      decoration: BoxDecoration(
                        color: Color(0xfff3eeea),
                        // color: Colors.black,
                        borderRadius: BorderRadius.circular(0.0),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              offset: const Offset(-10.0, 10.0),
                              blurRadius: 20.0,
                              spreadRadius: 4.0
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 15,
                  left: 30,
                  child: Card(
                    elevation: 10.0,
                    shadowColor: Colors.grey.withOpacity(0.5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Container(
                      height: 180,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Color(0xfff3eeea),
                        borderRadius: BorderRadius.circular(10.0),
                        image: const DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("assets/dot_slash_logo.png")
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 60,
                  left: 200,
                  child: Container(
                    height: 150,
                    width: 160,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Coding Club",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 17.3,
                            // color: Color(0xFF363f93),
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("Official Coding Community",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Divider(color: Colors.black,),
                        Text("The community, aims to encourage and motivate fellow students to improve their problem solving and analytical skills, by creating an environment of self as well as community learning.",
                          softWrap: true,
                          style: TextStyle(
                            fontSize: 11,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: MediaQuery.removePadding(context: context,
              removeTop: true,
              child: ListView(
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 10,top: 25),
                    height: 200,
                    padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFFAA456),
                        // color: Colors.black,
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(80.0),
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: const Color(0xFFFAA456).withOpacity(0.3),
                              offset: const Offset(-10.0, 0.0),
                              blurRadius: 20.0,
                              spreadRadius: 4.0
                          ),
                        ],
                      ),
                      padding: const EdgeInsets.only(
                        left: 32,
                        top: 35.0,
                        bottom: 40,
                        right: 20,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                          const Text(
                            "CLUB HEADS",
                            style: TextStyle(
                              color: Color(0xfff3eeea),
                              fontSize: 12,
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          const Text(
                            "Anshuman Das",
                            style: TextStyle(
                              color: Color(0xfff3eeea),
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Text("CSE   2nd Yr",
                                  style: TextStyle(
                                      color: Color(0xfff3eeea)
                                  ),
                                ),
                                buildDivider(),
                                GestureDetector(
                                  onTap: (){launch('https://www.linkedin.com/in/anshuman-das-9a4064175/');},
                                  child: const Icon(
                                    FontAwesomeIcons.linkedin,
                                    color: Color(0xfff3eeea),
                                    size: 30,
                                  ),
                                ),

                                // Text("||||||||"),
                                // const Text("CSE\n2nd Yr",
                                //   style: TextStyle(
                                //       color: Colors.white
                                //   ),
                                // ),
                                // buildDivider(),
                                // GestureDetector(
                                //   onTap: (){launch('https://www.linkedin.com/in/ambuj-raj-542913201/');},
                                //   child: const Icon(
                                //     FontAwesomeIcons.linkedin,
                                //     color: Colors.white,
                                //     size: 30,
                                //   ),
                                // ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 10,top: 25),
                    height: 200,
                    padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFFAA456),
                        // color: Colors.black,
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(80.0),
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: const Color(0xFFFAA456).withOpacity(0.3),
                              offset: const Offset(-10.0, 0.0),
                              blurRadius: 20.0,
                              spreadRadius: 4.0
                          ),
                        ],
                      ),
                      padding: const EdgeInsets.only(
                        left: 32,
                        top: 35.0,
                        bottom: 40,
                        right: 20,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                          const Text(
                            "CONNECT WITH US!",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          // const Text(
                          //   "Chirag Garg     &    Ambuj Raj",
                          //   style: TextStyle(
                          //     color: Colors.white,
                          //     fontSize: 22,
                          //     fontWeight: FontWeight.bold,
                          //   ),
                          // ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                              GestureDetector(
                                onTap: (){launch('https://www.instagram.com/dotslashcommunity/');},
                                child: const Icon(
                                  FontAwesomeIcons.instagramSquare,
                                  color: Color(0xfff3eeea),
                                  size: 40,
                                ),
                              ),
                                buildDivider(),
                              GestureDetector(
                                onTap: (){launch('https://www.linkedin.com/company/dotslashcommunity/');},
                                child: const Icon(
                                  FontAwesomeIcons.linkedin,
                                  color: Color(0xfff3eeea),
                                  size: 40,
                                ),
                              ),
                                buildDivider(),
                                GestureDetector(
                                  onTap: (){launch('https://iiit-nagpur.github.io/dotslashcommunity/');},
                                  child: const Icon(
                                    FontAwesomeIcons.chrome,
                                    color: Color(0xfff3eeea),
                                    size: 40,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  Widget buildDivider() => Container(
    height: 24,
    child: const VerticalDivider(color: Colors.white,),
  );
}
