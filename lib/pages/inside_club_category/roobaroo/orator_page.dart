import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Orator extends StatefulWidget {
  const Orator({Key? key}) : super(key: key);

  @override
  _OratorState createState() => _OratorState();
}

class _OratorState extends State<Orator> {
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
                  top: 100,
                  left: 10,
                  child: Text(
                    "ORATOR",
                    style: TextStyle(
                      fontSize: 47,
                      letterSpacing: 6,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Comfortaa',
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
                        color: Color(0xFFC4FAE2),
                        // color: Colors.black,
                        // color: Colors.white,
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
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Color(0xFFC4FAE2),
                        // color: Colors.black,
                        // color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        image: const DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("assets/orator_logo.png")
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
                        Text("Debate",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 17.3,
                            // color: Color(0xFF363f93),
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("Official Public Speaking & Debatting Club",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Divider(color: Colors.black,),
                        Text("This is the official debate and public speaking wing of the college. This is where you develop confidence of oratory and blah... blah...",
                          softWrap: true,
                          style: TextStyle(
                            fontSize: 9.8,
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
                        // color: const Color(0xFF71226f),
                        color: Colors.black,
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(80.0),
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.3),
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
                              color: Color(0xFFC4FAE2),
                              // color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          const Text(
                            "Yash Mishra",
                            style: TextStyle(
                              color: Color(0xFFC4FAE2),
                              // color: Colors.white,
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
                                const Text("ECE   2nd Yr",
                                  style: TextStyle(
                                    color: Color(0xFFC4FAE2),
                                    // color: Colors.white
                                  ),
                                ),
                                buildDivider(),
                                GestureDetector(
                                  onTap: (){launch('https://www.linkedin.com/in/yash-mishra-133893191/');},
                                  child: const Icon(
                                    FontAwesomeIcons.linkedin,
                                    color: Color(0xFFC4FAE2),
                                    // color: Colors.white,
                                    size: 30,
                                  ),
                                ),
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
                        // color: const Color(0xFF71226f),
                        color: Colors.black,
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(80.0),
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.3),
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
                              // color: Colors.white,
                              color: Color(0xFFC4FAE2),
                              // color: Colors.white,
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
                                  onTap: (){launch('https://www.instagram.com/orator_club_iiitn/');},
                                  child: const Icon(
                                    FontAwesomeIcons.instagramSquare,
                                    // color: Colors.black,
                                    color: Color(0xFFC4FAE2),
                                    size: 40,
                                  ),
                                ),
                                buildDivider(),
                                GestureDetector(
                                  onTap: (){launch('https://www.linkedin.com/company/orator-club-iiitn/');},
                                  child: const Icon(
                                    FontAwesomeIcons.linkedin,
                                    // color: Colors.black,
                                    color: Color(0xFFC4FAE2),
                                    size: 40,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: (){launch('https://discord.com/invite/KmBrMtktXP');},
                                  child: const Icon(
                                    FontAwesomeIcons.discord,
                                    size: 40,
                                    color: Color(0xffc5855c),
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
    child: const VerticalDivider(color: Color(0xFFC4FAE2),),
  );
}
