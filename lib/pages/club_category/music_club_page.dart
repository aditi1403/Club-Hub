// TODO Implement this library.
// import 'package:animations/animations.dart';
// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:url_launcher/url_launcher.dart';
// import 'package:flutter/scheduler.dart';
// import 'tech_plethora_page.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Music extends StatefulWidget {
  const Music({Key? key}) : super(key: key);

  @override
  State<Music> createState() => _MusicState();
}

class _MusicState extends State<Music> {
  ValueNotifier<bool> isDialOpen = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true ,
      backgroundColor: const Color(0xffffe88a),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const BackButton(color: Color(0xff000000)),
          // backgroundColor: const Color(0xffff914d).withOpacity(0.80) ,
          // elevation: 0,
          // title: const Text('ROOBAROO',
          //   style: TextStyle(
          //     color: Color(0xff000000),
          //     fontSize: 27.2,
          //     fontFamily: 'PermanentMarker',
          //   ),
          // ),
          // leading: GestureDetector(
          //   onTap: () { Navigator.pop(context); },
          //   child: const Icon(
          //     Icons.logout, // add custom icons also
          //     color: Color(0xff000000),
          //   ),
          // ),
          //
          // actions: [
          //   IconButton(
          //     icon: Image.asset('assets/iiitn.png',
          //       height: 70,
          //       width: 70,
          //       fit: BoxFit.contain,
          //     ),
          //     iconSize: 50,
          //     onPressed: () { launch('https://iiitn.ac.in'); },
          //   ),
          // ]
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
                      child:
                      Center(
                        child: Container(
                          child: Image.asset('assets/music_cover.png',
                              fit: BoxFit.cover,
                              height: 550,
                              width: double.infinity,
                              alignment: Alignment.topCenter
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    Container(
                      child: const Text('ROOBAROO',
                        style: TextStyle(
                          fontSize: 40,
                          fontFamily: 'Comfortaa',
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Container(
                      padding: const EdgeInsets.only(left:15.0, right: 15.0),
                      child: const Text('Dedicated to unleash the talent that exudes from the budding student. Promoting cultural activities results in enhancement of the personal skills and experiences like confidence; self-presentation; teamwork and collaboration; time management and organizational skills; self-awareness; self-discipline; open mindedness to move beyond boundaries and experiment with different ideas; communication skills; the ability to cope with criticism and learn from them resulting in a whole new developed, changed and an improved person.\n\nRoobaroo is a Fusion of : ',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontFamily: 'Comfortaa',),
                      ),
                    ),
                    const SizedBox(height: 40,),
                    // Container(
                    //   child: IconButton(
                    //     icon: Image.asset('assets/club_arrow.png',
                    //       height: 90,
                    //       width: 90,
                    //       fit: BoxFit.contain,
                    //     ),
                    //     iconSize: 90,
                    //     onPressed: (){Navigator.pushNamed(context, '/inside_music');},
                    //   ),
                    //   // Image.asset('assets/club_arrow.png')
                    //   // ),
                    // ),
                    WillPopScope(
                      onWillPop: () async{
                        if(isDialOpen.value){
                          isDialOpen.value = false;
                          return false;
                        }else{
                          return true;
                        }
                      },
                      // child: Container(
                      child: SpeedDial(
                        animatedIcon: AnimatedIcons.menu_arrow,
                        openCloseDial: isDialOpen,
                        backgroundColor: Colors.orange,
                        overlayColor: Colors.transparent,
                        overlayOpacity: 0.5,
                        spacing: 15,
                        spaceBetweenChildren: 15,
                        closeManually: true,
                        children: [
                          //Dance
                          SpeedDialChild(
                              child: const Icon(Icons.emoji_people, color: Colors.black,),
                              label: 'Dance',
                              // backgroundColor: Colors.black,
                              onTap: (){
                                isDialOpen.value = false;
                                // print('Share Tapped');
                                Navigator.pushNamed(context, '/dance_page');
                              }
                          ),
                          //Drama
                          SpeedDialChild(
                              child: const Icon(Icons.connect_without_contact, color: Colors.black,),
                              // backgroundColor: Colors.deepOrangeAccent,
                              label: 'Drama',
                              onTap: (){
                                isDialOpen.value = false;
                                // print('Mail Tapped');
                                Navigator.pushNamed(context, '/drama_page');
                              }
                          ),
                          //Music
                          SpeedDialChild(
                              child: const Icon(Icons.headphones,color: Color(0xFF138f5b),),
                              backgroundColor: const Color(0xFFC4FAE2),
                              label: 'Music',
                              onTap: (){
                                isDialOpen.value = false;
                                // print('Copy Tapped');
                                Navigator.pushNamed(context, '/crescendo_page');
                              }
                          ),
                          //Orator
                          SpeedDialChild(
                              child: const Icon(Icons.mic,color: Color(0xFFc5855c),),
                              backgroundColor: Color(0xFF25304b),
                              label: 'Orator',
                              onTap: (){
                                isDialOpen.value = false;
                                // print('Copy Tapped');
                                Navigator.pushNamed(context, '/orator_page');
                              }
                          ),
                          //EBSB
                          SpeedDialChild(
                              child: const Icon(Icons.highlight_off,color: Colors.black,),
                              // backgroundColor: Colors.black,
                              label: 'ESBS',
                              onTap: (){
                                isDialOpen.value = false;
                                // print('Copy Tapped');
                                Navigator.pushNamed(context, '/esbs_page');
                              }
                          ),
                          //Social Outreach
                          SpeedDialChild(
                              child: const Icon(Icons.nature_people,color: Colors.black,),
                              // backgroundColor: Colors.white,
                              label: 'Social Outreach',
                              onTap: (){
                                isDialOpen.value = false;
                                // print('Copy Tapped');
                                Navigator.pushNamed(context, '/social_out_page');
                              }
                          ),
                          //Hindi Rajbhasha
                          SpeedDialChild(
                              child: const Icon(Icons.translate,color: Colors.black,),
                              // backgroundColor: Colors.white,
                              label: 'Hindi RajBhasha',
                              onTap: (){
                                isDialOpen.value = false;
                                // print('Copy Tapped');
                                Navigator.pushNamed(context, '/hindi_raj_page');
                              }
                          ),
                        ],
                      ),
                      // ),
                    ),
                    const SizedBox(height: 40,),
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
    );
  }
}
// Music Class


// Clubs
// i. Dance Wing
// ii. Drama Wing
// iii. Music Wing
// # iv. Debate and Public Speaking Wing
// v. EBSB Wing
// vi. Social Outreach Activities
// vii. Hindi Rajbhasha wing

// //Dance
// Container(
//     child: Card(
//       color: const Color(0xfff3eeea),
//       child: Column(
//         mainAxisSize: MainAxisSize.max,
//         children: <Widget>[
//           //Image
//           ListTile(
//             title: Image.asset('assets/sample_banner.png',
//               fit: BoxFit.cover,
//               height: 90,
//               alignment: Alignment.center,
//             ),
//           ),
//           const Divider(
//             color: Colors.black,
//             indent: 10,
//             endIndent: 10,
//           ),
//           //Description
//           const ListTile(
//             title: Text('Dance Wing',
//               style: TextStyle(
//                 fontSize: 25,
//               ),
//             ),
//             subtitle: Text('Official Dance Community\nLead: ABC\n           CSE, Qnd Yr ',
//               style: TextStyle(
//                   fontSize: 15
//               ),
//             ),
//           ),
//           const Divider(
//             color: Colors.black,
//             indent: 90,
//             endIndent: 90,
//           ),
//           //Icons
//           ListTile(
//             // leading: FlutterLogo(size: 56.0),
//             title: Wrap(
//               spacing: 30,
//               children: <Widget>[
//                 GestureDetector(
//                   onTap: (){},
//                   child: const Icon(
//                     FontAwesomeIcons.instagramSquare,
//                     size: 40,
//                   ),
//                 ),
//                 GestureDetector(
//                   onTap: (){},
//                   child: const Icon(
//                     FontAwesomeIcons.linkedin,
//                     size: 40,
//                   ),
//                 ),
//                 GestureDetector(
//                   onTap: (){},
//                   child: const Icon(
//                     FontAwesomeIcons.twitter,
//                     size: 40,
//                   ),
//                 ),
//                 GestureDetector(
//                   onTap: (){},
//                   child: const Icon(
//                     FontAwesomeIcons.chrome,
//                     size: 40,
//                   ),
//                 ),
//                 GestureDetector(
//                   onTap: (){},
//                   child: const Icon(
//                     FontAwesomeIcons.discord,
//                     size: 40,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     )
// ),
// const SizedBox(
//   height: 15.0,
// ),
// //Drama
// Container(
//     child: Card(
//       color: const Color(0xfff3eeea),
//       child: Column(
//         mainAxisSize: MainAxisSize.max,
//         children: <Widget>[
//           //Image
//           ListTile(
//             title: Image.asset('assets/sample_banner.png',
//               fit: BoxFit.cover,
//               height: 90,
//               alignment: Alignment.center,
//             ),
//           ),
//           const Divider(
//             color: Colors.black,
//             indent: 10,
//             endIndent: 10,
//           ),
//           //Description
//           const ListTile(
//             title: Text('Drama Wing',
//               style: TextStyle(
//                 fontSize: 25,
//               ),
//             ),
//             subtitle: Text('Official Drama Community\nLead: ABC\n           CSE, Qnd Yr ',
//               style: TextStyle(
//                   fontSize: 15
//               ),
//             ),
//           ),
//           const Divider(
//             color: Colors.black,
//             indent: 90,
//             endIndent: 90,
//           ),
//           //Icons
//           ListTile(
//             // leading: FlutterLogo(size: 56.0),
//             title: Wrap(
//               spacing: 30,
//               children: <Widget>[
//                 GestureDetector(
//                   onTap: (){},
//                   child: const Icon(
//                     FontAwesomeIcons.instagramSquare,
//                     size: 40,
//                   ),
//                 ),
//                 GestureDetector(
//                   onTap: (){},
//                   child: const Icon(
//                     FontAwesomeIcons.linkedin,
//                     size: 40,
//                   ),
//                 ),
//                 GestureDetector(
//                   onTap: (){},
//                   child: const Icon(
//                     FontAwesomeIcons.twitter,
//                     size: 40,
//                   ),
//                 ),
//                 GestureDetector(
//                   onTap: (){},
//                   child: const Icon(
//                     FontAwesomeIcons.chrome,
//                     size: 40,
//                   ),
//                 ),
//                 GestureDetector(
//                   onTap: (){},
//                   child: const Icon(
//                     FontAwesomeIcons.discord,
//                     size: 40,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     )
// ),
// const SizedBox(
//   height: 15.0,
// ),
// // Music
// Container(
//     child: Card(
//       color: const Color(0xfff3eeea),
//       child: Column(
//         mainAxisSize: MainAxisSize.max,
//         children: <Widget>[
//           //Image
//           ListTile(
//             title: Image.asset('assets/sample_banner.png',
//               fit: BoxFit.cover,
//               height: 90,
//               alignment: Alignment.center,
//             ),
//           ),
//           const Divider(
//             color: Colors.black,
//             indent: 10,
//             endIndent: 10,
//           ),
//           //Description
//           const ListTile(
//             title: Text('Music Wing',
//               style: TextStyle(
//                 fontSize: 25,
//               ),
//             ),
//             subtitle: Text('Official Music Community\nLead: ABC\n           CSE, Qnd Yr ',
//               style: TextStyle(
//                   fontSize: 15
//               ),
//             ),
//           ),
//           const Divider(
//             color: Colors.black,
//             indent: 90,
//             endIndent: 90,
//           ),
//           //Icons
//           ListTile(
//             // leading: FlutterLogo(size: 56.0),
//             title: Wrap(
//               spacing: 30,
//               children: <Widget>[
//                 GestureDetector(
//                   onTap: (){},
//                   child: const Icon(
//                     FontAwesomeIcons.instagramSquare,
//                     size: 40,
//                   ),
//                 ),
//                 GestureDetector(
//                   onTap: (){},
//                   child: const Icon(
//                     FontAwesomeIcons.linkedin,
//                     size: 40,
//                   ),
//                 ),
//                 GestureDetector(
//                   onTap: (){},
//                   child: const Icon(
//                     FontAwesomeIcons.twitter,
//                     size: 40,
//                   ),
//                 ),
//                 GestureDetector(
//                   onTap: (){},
//                   child: const Icon(
//                     FontAwesomeIcons.chrome,
//                     size: 40,
//                   ),
//                 ),
//                 GestureDetector(
//                   onTap: (){},
//                   child: const Icon(
//                     FontAwesomeIcons.discord,
//                     size: 40,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     )
// ),
// const SizedBox(
//   height: 15.0,
// ),
// // Orator
// Container(
//     child: Card(
//       color: const Color(0xff25304b),
//       child: Column(
//         mainAxisSize: MainAxisSize.max,
//         children: <Widget>[
//           //Image
//           ListTile(
//             title: Image.asset('assets/orator_banner.png',
//               fit: BoxFit.cover,
//               height: 90,
//               alignment: Alignment.center,
//             ),
//           ),
//           const Divider(
//             color: Color(0xffc5855c),
//             indent: 10,
//             endIndent: 10,
//           ),
//           //Description
//           const ListTile(
//             title: Text('Orator Club',
//               style: TextStyle(
//                 fontSize: 25,
//                 color: Color(0xffc5855c),
//               ),
//             ),
//             subtitle: Text('Official Debate and Public Speaking Wing\nLead: Yash Mishra\n           ECE, 2nd Yr ',
//               style: TextStyle(
//                   fontSize: 15,
//                 color: Color(0xffc5855c),
//               ),
//             ),
//           ),
//           const Divider(
//             color: Color(0xffc5855c),
//             indent: 90,
//             endIndent: 90,
//           ),
//           //Icons
//           ListTile(
//             // leading: FlutterLogo(size: 56.0),
//             title: Wrap(
//               spacing: 30,
//               children: <Widget>[
//                 GestureDetector(
//                   onTap: (){launch('https://www.instagram.com/orator_club_iiitn/');},
//                   child: const Icon(
//                     FontAwesomeIcons.instagramSquare,
//                     size: 40,
//                     color: Color(0xffc5855c),
//                   ),
//                 ),
//                 GestureDetector(
//                   onTap: (){launch('https://www.linkedin.com/company/orator-club-iiitn/');},
//                   child: const Icon(
//                     FontAwesomeIcons.linkedin,
//                     size: 40,
//                     color: Color(0xffc5855c),
//                   ),
//                 ),
//                 GestureDetector(
//                   onTap: (){},
//                   child: const Icon(
//                     FontAwesomeIcons.twitter,
//                     size: 40,
//                     color: Color(0xffc5855c),
//                   ),
//                 ),
//                 GestureDetector(
//                   onTap: (){},
//                   child: const Icon(
//                     FontAwesomeIcons.chrome,
//                     size: 40,
//                     color: Color(0xffc5855c),
//                   ),
//                 ),
//                 GestureDetector(
//                   onTap: (){launch('https://discord.com/invite/KmBrMtktXP');},
//                   child: const Icon(
//                     FontAwesomeIcons.discord,
//                     size: 40,
//                     color: Color(0xffc5855c),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     )
// ),
// const SizedBox(
//   height: 15.0,
// ),
// // ESBS
// Container(
//     child: Card(
//       color: const Color(0xfff3eeea),
//       child: Column(
//         mainAxisSize: MainAxisSize.max,
//         children: <Widget>[
//           //Image
//           ListTile(
//             title: Image.asset('assets/sample_banner.png',
//               fit: BoxFit.cover,
//               height: 90,
//               alignment: Alignment.center,
//             ),
//           ),
//           const Divider(
//             color: Colors.black,
//             indent: 10,
//             endIndent: 10,
//           ),
//           //Description
//           const ListTile(
//             title: Text('ESBS Wing',
//               style: TextStyle(
//                 fontSize: 25,
//               ),
//             ),
//             subtitle: Text('Official ESBS Community\nLead: ABC\n           CSE, Qnd Yr ',
//               style: TextStyle(
//                   fontSize: 15
//               ),
//             ),
//           ),
//           const Divider(
//             color: Colors.black,
//             indent: 90,
//             endIndent: 90,
//           ),
//           //Icons
//           ListTile(
//             // leading: FlutterLogo(size: 56.0),
//             title: Wrap(
//               spacing: 30,
//               children: <Widget>[
//                 GestureDetector(
//                   onTap: (){},
//                   child: const Icon(
//                     FontAwesomeIcons.instagramSquare,
//                     size: 40,
//                   ),
//                 ),
//                 GestureDetector(
//                   onTap: (){},
//                   child: const Icon(
//                     FontAwesomeIcons.linkedin,
//                     size: 40,
//                   ),
//                 ),
//                 GestureDetector(
//                   onTap: (){},
//                   child: const Icon(
//                     FontAwesomeIcons.twitter,
//                     size: 40,
//                   ),
//                 ),
//                 GestureDetector(
//                   onTap: (){},
//                   child: const Icon(
//                     FontAwesomeIcons.chrome,
//                     size: 40,
//                   ),
//                 ),
//                 GestureDetector(
//                   onTap: (){},
//                   child: const Icon(
//                     FontAwesomeIcons.discord,
//                     size: 40,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     )
// ),
// const SizedBox(
//   height: 15.0,
// ),
// // Social Outreach
// Container(
//     child: Card(
//       color: const Color(0xfff3eeea),
//       child: Column(
//         mainAxisSize: MainAxisSize.max,
//         children: <Widget>[
//           //Image
//           ListTile(
//             title: Image.asset('assets/sample_banner.png',
//               fit: BoxFit.cover,
//               height: 90,
//               alignment: Alignment.center,
//             ),
//           ),
//           const Divider(
//             color: Colors.black,
//             indent: 10,
//             endIndent: 10,
//           ),
//           //Description
//           const ListTile(
//             title: Text('Social Outreach Wing',
//               style: TextStyle(
//                 fontSize: 25,
//               ),
//             ),
//             subtitle: Text('Official Social Outreach Community\nLead: ABC\n           CSE, Qnd Yr ',
//               style: TextStyle(
//                   fontSize: 15
//               ),
//             ),
//           ),
//           const Divider(
//             color: Colors.black,
//             indent: 90,
//             endIndent: 90,
//           ),
//           //Icons
//           ListTile(
//             // leading: FlutterLogo(size: 56.0),
//             title: Wrap(
//               spacing: 30,
//               children: <Widget>[
//                 GestureDetector(
//                   onTap: (){},
//                   child: const Icon(
//                     FontAwesomeIcons.instagramSquare,
//                     size: 40,
//                   ),
//                 ),
//                 GestureDetector(
//                   onTap: (){},
//                   child: const Icon(
//                     FontAwesomeIcons.linkedin,
//                     size: 40,
//                   ),
//                 ),
//                 GestureDetector(
//                   onTap: (){},
//                   child: const Icon(
//                     FontAwesomeIcons.twitter,
//                     size: 40,
//                   ),
//                 ),
//                 GestureDetector(
//                   onTap: (){},
//                   child: const Icon(
//                     FontAwesomeIcons.chrome,
//                     size: 40,
//                   ),
//                 ),
//                 GestureDetector(
//                   onTap: (){},
//                   child: const Icon(
//                     FontAwesomeIcons.discord,
//                     size: 40,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     )
// ),
// const SizedBox(
//   height: 15.0,
// ),
// // Hindi rajbhasha
// Container(
//     child: Card(
//       color: const Color(0xfff3eeea),
//       child: Column(
//         mainAxisSize: MainAxisSize.max,
//         children: <Widget>[
//           //Image
//           ListTile(
//             title: Image.asset('assets/sample_banner.png',
//               fit: BoxFit.cover,
//               height: 90,
//               alignment: Alignment.center,
//             ),
//           ),
//           const Divider(
//             color: Colors.black,
//             indent: 10,
//             endIndent: 10,
//           ),
//           //Description
//           const ListTile(
//             title: Text('Hindi RajBhasha Wing',
//               style: TextStyle(
//                 fontSize: 25,
//               ),
//             ),
//             subtitle: Text('Official Hindi RajBhasha Community\nLead: ABC\n           CSE, Qnd Yr ',
//               style: TextStyle(
//                   fontSize: 15
//               ),
//             ),
//           ),
//           const Divider(
//             color: Colors.black,
//             indent: 90,
//             endIndent: 90,
//           ),
//           //Icons
//           ListTile(
//             // leading: FlutterLogo(size: 56.0),
//             title: Wrap(
//               spacing: 30,
//               children: <Widget>[
//                 GestureDetector(
//                   onTap: (){},
//                   child: const Icon(
//                     FontAwesomeIcons.instagramSquare,
//                     size: 40,
//                   ),
//                 ),
//                 GestureDetector(
//                   onTap: (){},
//                   child: const Icon(
//                     FontAwesomeIcons.linkedin,
//                     size: 40,
//                   ),
//                 ),
//                 GestureDetector(
//                   onTap: (){},
//                   child: const Icon(
//                     FontAwesomeIcons.twitter,
//                     size: 40,
//                   ),
//                 ),
//                 GestureDetector(
//                   onTap: (){},
//                   child: const Icon(
//                     FontAwesomeIcons.chrome,
//                     size: 40,
//                   ),
//                 ),
//                 GestureDetector(
//                   onTap: (){},
//                   child: const Icon(
//                     FontAwesomeIcons.discord,
//                     size: 40,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     )
// ),
// const SizedBox(
//   height: 15.0,
// ),