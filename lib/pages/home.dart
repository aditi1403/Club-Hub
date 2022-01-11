// ignore_for_file: avoid_unnecessary_containers
import 'login/provider/google_sign_in.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true ,
      backgroundColor: const Color(0xffffe88a),
      appBar: AppBar(
          backgroundColor: const Color(0xffff914d).withOpacity(0.80) ,
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
                            // Column(
                            //   children: [
                            //     Positioned(
                            //       top: 5150,
                            //       // left: 510,
                            //       left: 0,
                            //       right: 0,
                                  // right: 500,
                                  // child: Container(
                                  //   child:
                                    Image.asset('assets/illustration.png',
                                      fit: BoxFit.scaleDown,
                                      height: 900,
                                      width: 1000,
                                    ),
                                  // ),
                                // ),
                              // ],
                            // ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/tech');
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
                    const Text('Developer:  Aditi Yadav | CSE | 2nd Yr',textAlign: TextAlign.center,style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

      persistentFooterButtons: [
        SizedBox(
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
    );
  }   //Build
}