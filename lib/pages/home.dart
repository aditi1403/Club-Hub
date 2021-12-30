// import 'dart:js';

// ignore_for_file: avoid_unnecessary_containers

// import 'package:animations/animations.dart';
import 'login/provider/google_sign_in.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'package:provider/provider.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:flutter/scheduler.dart';
// import 'pages/tech_plethora_page.dart';
// import 'pages/music_club_page.dart';
// import 'pages/icc_page.dart';
// import 'ui/views/home_view.dart';
// import 'core/viewmodels/home_model.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true ,
      backgroundColor: const Color(0xffffe88a),
      appBar: AppBar(
          backgroundColor: const Color(0xffff914d).withOpacity(0.80) ,
          // .withOpacity(0.27)
          // backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text('CLUB HUB',
            style: TextStyle(
              color: Color(0xff000000),
              fontSize: 35.2,
              fontFamily: 'Comfortaa',
            ),
          ),
          leading: GestureDetector(
            onTap: () {
              final provider = Provider.of<GoogleSignInProvider>(context, listen: false);
              provider.logout();
            },
            child: const Icon(
              Icons.logout, // add custom icons also
              color: Color(0xff000000),
            ),
          ),

          // title: Image.asset('assets/appbar.png', width: 1440),
          // rightTitle: true,

          actions: [
            IconButton(
              icon: Image.asset('assets/iiitn.png',
                height: 70,
                width: 70,
                fit: BoxFit.contain,
              ),
              iconSize: 50,
              onPressed: () { launch('https://iiitn.ac.in'); },
            ),
          ]
      ),

      body: Container(
        child: Row(
          children: [
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Container(
                      child: Center(
                        child: Stack(
                          children: <Widget>[
                            Container(
                              child: Image.asset('assets/up_corner.png',
                                  fit: BoxFit.cover,
                                  height: 750,
                                  // height: double.infinity,
                                  width: double.infinity,
                                  // scale: 500,
                                  alignment: Alignment.topLeft),
                            ),

                            Positioned(
                              top: 110,
                              left: 30,
                              right: 55,
                              child: Container(
                                child: RichText(
                                  softWrap: true,
                                  text: const TextSpan(
                                    text: 'Welcome!! to the One-Stop Destination to get to know about everything, IIITN has to offer apart from academics.\n\nHave a look at our Student Clubs...',
                                    style: TextStyle(
                                      color: Color(0xff000000),
                                      fontSize: 16,
                                      fontFamily: 'Comfortaa',
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Column(
                              children: [
                                Positioned(
                                  top: 5150,
                                  left: 510,
                                  right: 500,
                                  child: Container(
                                    // child: IconButton(
                                    //   icon:
                                    child:
                                    Image.asset('assets/illustration.png',
                                      fit: BoxFit.scaleDown,
                                      height: 900,
                                      width: 1000,
                                      // scale: 8,
                                      // alignment: Alignment.center,
                                    ),
                                    // iconSize: 200,
                                    // padding: const EdgeInsets.all(100.0),
                                    // onPressed: () {  },
                                    // ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/tech');
                          // launch('https://iiitn.ac.in');
                          // OpenContainer(
                          //   transitionType: ContainerTransitionType.fadeThrough,
                          //   closedElevation: 0.0,
                          //   openElevation: 4.0,
                          //   transitionDuration: const Duration(milliseconds: 1500),
                          //   openBuilder: (BuildContext _, VoidCallback openContainer) {
                          //     return const TechPlethora();
                          //   },
                          //   closedBuilder: (BuildContext _, VoidCallback openContainer) {
                          //     return GestureDetector(
                          //       onTap: ()async{openContainer();},
                          //         child: const ListTile(
                          //           leading: Icon(Icons.alarm),
                          //           title: Text("TECH PLETHORA"),
                          //         ),
                          //       );
                          //     },
                          //   );
                        },
                        //techPlethora
                        child: ClipOval(
                          child: Image.asset('assets/tech_logo.png',
                              height: 150,
                              alignment: Alignment.topCenter
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Expanded(
                            flex: 5,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.pushNamed(context, '/icc');
                                      // launch('https://iiitn.ac.in');
                                      // OpenContainer(
                                      //   transitionType: ContainerTransitionType.fadeThrough,
                                      //   closedElevation: 0.0,
                                      //   openElevation: 4.0,
                                      //   transitionDuration: const Duration(milliseconds: 1500),
                                      //   openBuilder: (BuildContext _, VoidCallback openContainer) {
                                      //     return const ICC();
                                      //   },
                                      //   closedBuilder: (BuildContext _, VoidCallback openContainer) {
                                      //     return InkWell(
                                      //       onTap: ()async{openContainer();},
                                      //       child: const ListTile(
                                      //         leading: Icon(Icons.alarm),
                                      //         title: Text("INNOVATION COUNCIL"),
                                      //       ),
                                      //     );
                                      //   },
                                      // );
                                    },
                                    //ICC
                                    child: ClipOval(
                                      child: Image.asset('assets/ICC_logo.png',
                                          fit: BoxFit.cover,
                                          width: 150,
                                          height: 150,
                                          alignment: Alignment.center
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.pushNamed(context, '/music');
                                      // launch('https://iiitn.ac.in');
                                      // OpenContainer(
                                      //   transitionType: ContainerTransitionType.fadeThrough,
                                      //   closedElevation: 0.0,
                                      //   openElevation: 4.0,
                                      //   transitionDuration: const Duration(milliseconds: 1500),
                                      //   openBuilder: (BuildContext _, VoidCallback openContainer) {
                                      //     return const Music();
                                      //   },
                                      //   closedBuilder: (BuildContext _, VoidCallback openContainer) {
                                      //     return InkWell(
                                      //       onTap: ()async{openContainer();},
                                      //       child: const ListTile(
                                      //         leading: Icon(Icons.alarm),
                                      //         title: Text("ROOBAROO"),
                                      //       ),
                                      //     );
                                      //   },
                                      // );
                                    },
                                    child: ClipOval(
                                      child: Image.asset('assets/music_logo.png',
                                          fit: BoxFit.cover,
                                          width: 150,
                                          height: 150,
                                          alignment: Alignment.center
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 50,),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

      persistentFooterButtons: [
        SizedBox(
          // padding: EdgeInsets.zero,
          // color: const Color(0xffff914d).withOpacity(0.80),
          height: 50,
          child: Row(
            children: [
              // Home
              Expanded(
                flex: 5,
                child: Container(
                  child: GestureDetector(
                    onTap: () { Navigator.pushNamed(context, '/home'); },
                    child: const Icon(
                      Icons.home_rounded,// add custom icons also
                      size: 50,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ),
              //profile
              Expanded(
                flex: 5,
                child: Container(
                  child: GestureDetector(
                    onTap: () { Navigator.pushNamed(context, '/profile'); },
                    child: const Icon(
                      Icons.person_rounded,// add custom icons also
                      size: 50,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ]
      // const [ SizedBox(
      //     height: 15,
      //     width: 900,
      //     child: Text(
      //       'Copyright © 2021 All Rights Reserved',
      //       textAlign: TextAlign.center,
      //       style: TextStyle(
      //         color: Colors.black,
      //         letterSpacing: 1,
      //       ),
      //     ),
      //   ) ],
    );
  }   //Build
}