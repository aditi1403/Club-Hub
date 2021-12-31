// TODO Implement this library.
// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';


class TechPlethora extends StatefulWidget {
  const TechPlethora({Key? key}) : super(key: key);

  @override
  State<TechPlethora> createState() => _TechPlethoraState();
}

class _TechPlethoraState extends State<TechPlethora> {
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
          // title: const Text('TECH PLETHORA',
          //   style: TextStyle(
          //     color: Color(0xff000000),
          //     fontSize: 25.2,
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
                      child: Center(
                        child: Container(
                          child: Image.asset('assets/tech_cover.png',
                              fit: BoxFit.cover,
                              height: 550,
                              width: double.infinity,
                              alignment: Alignment.topCenter
                          ),
                        ),
                      ),
                    ),


                    // Clubs
                    // # i. Coding Wing (Dot Slash Community)
                    // # ii. Robotics Wing (IoTics)
                    // # iii. Skill nights and Development wing
                    // # iv. Design Wing (strokes)
                    // # v. AR, VR, XR Wing (Dimension)
                    // vi. Social Media(Probe IIITN), Photography and Videography, Magazine wing

                    const SizedBox(
                      height: 15.0,
                    ),
                      Container(
                        child: const Text('TECH PLETHORA',
                          style: TextStyle(
                            fontSize: 40,
                            fontFamily: 'Comfortaa',
                          ),
                        ),
                      ),
                    const SizedBox(height: 20,),
                    Container(
                      padding: const EdgeInsets.only(left:15.0, right: 15.0),
                      child: const Text('IIITN hosts a bunch of technical clubs for the student to immerse into the world of tech and awesome technologies taking over the world and contribute to the development of the same.\nThe main objective is to bring all tech enthusiasts under one roof and develop efficient and cost effective solutions to modern day problems.\n\n TechPlethora is concoction of :',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontFamily: 'Comfortaa',),
                      ),
                    ),
                    const SizedBox(height: 40,),
                    WillPopScope(
                      onWillPop: () async{
                        if(isDialOpen.value){
                          isDialOpen.value = false;
                          return false;
                        }else{
                          return true;
                        }
                      },
                        child: SpeedDial(
                          animatedIcon: AnimatedIcons.menu_arrow,
                          openCloseDial: isDialOpen,
                          backgroundColor: Colors.orange,
                          renderOverlay: true,
                          overlayColor: Colors.transparent,
                          overlayOpacity: 0.5,
                          spacing: 15,
                          spaceBetweenChildren: 15,
                          closeManually: true,
                          children: [
                            // Skills Nights
                            SpeedDialChild(
                                  child: const Icon(Icons.developer_mode, color: Colors.white,),
                                  label: 'Skills Nights',
                                  backgroundColor: Colors.black,
                                  onTap: (){
                                    isDialOpen.value = false;
                                    Navigator.pushNamed(context, '/sn_page');
                                    }
                              ),
                            //Dot Slash
                            SpeedDialChild(
                                  child: const Icon(Icons.code, color: Colors.black,),
                                  backgroundColor: Colors.deepOrangeAccent,
                                  label: 'Dot Slash',
                                  onTap: (){
                                    isDialOpen.value = false;
                                    Navigator.pushNamed(context, '/dot_slash_page');
                                  }
                              ),
                            //IoTics
                            SpeedDialChild(
                                  child: const Icon(Icons.precision_manufacturing,color: Color(0xff4664BF),),
                                  backgroundColor: Colors.white,
                                  label: 'IoTics',
                                  onTap: (){
                                    isDialOpen.value = false;
                                    Navigator.pushNamed(context, '/iotics_page');
                                  }
                              ),
                            //Strokes
                            SpeedDialChild(
                                child: const Icon(Icons.brush,color: Colors.pinkAccent,),
                                backgroundColor: Colors.white,
                                label: 'Strokes',
                                onTap: (){
                                  isDialOpen.value = false;
                                  Navigator.pushNamed(context, '/strokes_page');
                                }
                            ),
                            //Dimensions
                            SpeedDialChild(
                                child: const Icon(Icons.view_in_ar,color: Colors.purpleAccent,),
                                backgroundColor: Colors.black,
                                label: 'Dimensions',
                                onTap: (){
                                  isDialOpen.value = false;
                                  Navigator.pushNamed(context, '/dimensions_page');
                                }
                            ),
                            //Probe
                            SpeedDialChild(
                                child: const Icon(Icons.shutter_speed,color: Colors.black,),
                                backgroundColor: Colors.white,
                                label: 'Probe',
                                onTap: (){
                                  isDialOpen.value = false;
                                  Navigator.pushNamed(context, '/probe_page');
                                }
                            ),
                          ],
                        ),
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
                        size: 45,
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
                        size: 45,
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
}// TechPlethora Class

// // Dot Slash
// Container(
//     child: Card(
//       color: const Color(0xfff3eeea),
//       child: Column(
//         mainAxisSize: MainAxisSize.max,
//         children: <Widget>[
//           //Image
//           ListTile(
//             title: Image.asset('assets/dot_slash_banner.png',
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
//             title: Text('Dot Slash Community <./>',
//                 style: TextStyle(
//                   fontSize: 25,
//                 ),
//             ),
//             subtitle: Text('Official Coding Community\nLead: Anshuman Das\n           CSE, 2nd Yr ',
//               style: TextStyle(
//                 fontSize: 15
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
//                   onTap: (){launch('https://www.instagram.com/dotslashcommunity/');},
//                   child: const Icon(
//                     FontAwesomeIcons.instagramSquare,
//                     size: 40,
//                   ),
//                 ),
//                 GestureDetector(
//                   onTap: (){launch('https://www.linkedin.com/company/dotslashcommunity/');},
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
// //IoTics
// Container(
//     child: Card(
//       color: const Color(0xfff2f2f2),
//       child: Column(
//         mainAxisSize: MainAxisSize.max,
//         children: <Widget>[
//           //Image
//           ListTile(
//             title: Image.asset('assets/iotics_banner.png',
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
//             title: Text('IoTics Club',
//               style: TextStyle(
//                 fontSize: 25,
//               ),
//             ),
//             subtitle: Text('Official IoT & Robotics Community\nLead: Aditi Yadav\n           CSE, 2nd Yr ',
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
//             title: Wrap(
//               spacing: 30,
//               children: <Widget>[
//                 GestureDetector(
//                   onTap: (){launch('https://www.instagram.com/iotics_iiitn/');},
//                   child: const Icon(
//                     FontAwesomeIcons.instagramSquare,
//                     size: 40,
//                   ),
//                 ),
//                 GestureDetector(
//                   onTap: (){launch('https://www.linkedin.com/company/iotics-club-iiitn/');},
//                   child: const Icon(
//                     FontAwesomeIcons.linkedin,
//                     size: 40,
//                   ),
//                 ),
//                 GestureDetector(
//                   onTap: (){launch('https://twitter.com/IoTicsWing');},
//                   child: const Icon(
//                     FontAwesomeIcons.twitter,
//                     size: 40,
//                   ),
//                 ),
//                 GestureDetector(
//                   onTap: (){launch('https://ioticsclub.web.app/');},
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
// //Skills Nights
// Container(
//     child: Card(
//       color: const Color(0xff000000),
//       child: Column(
//         mainAxisSize: MainAxisSize.max,
//         children: <Widget>[
//           //Image
//           ListTile(
//             title: Image.asset('assets/skills_nights_banner.png',
//               fit: BoxFit.cover,
//               height: 90,
//               alignment: Alignment.center,
//             ),
//           ),
//           const Divider(
//             color: Colors.white,
//             indent: 10,
//             endIndent: 10,
//           ),
//           //Description
//           const ListTile(
//             title: Text('Skills Nights Club',
//               style: TextStyle(
//                 fontSize: 25,
//                 color: Color(0xfffefefe)
//               ),
//             ),
//             subtitle: Text('Official Skill Development Community\nLead: Ambuj & Chirag Garg\n           CSE, 2nd Yr ',
//               style: TextStyle(
//                   fontSize: 15,
//                   color: Color(0xfffefefe),
//               ),
//             ),
//           ),
//           const Divider(
//             color: Colors.white,
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
//                   onTap: (){launch('https://www.instagram.com/skills_nights_iiitn/');},
//                   child: const Icon(
//                     FontAwesomeIcons.instagramSquare,
//                     size: 40,
//                     color: Colors.white,
//                   ),
//                 ),
//                 GestureDetector(
//                   onTap: (){launch('https://www.linkedin.com/company/skills-nights/');},
//                   child: const Icon(
//                     FontAwesomeIcons.linkedin,
//                     size: 40,
//                     color: Colors.white,
//                   ),
//                 ),
//                 GestureDetector(
//                   onTap: (){},
//                   child: const Icon(
//                     FontAwesomeIcons.twitter,
//                     size: 40,
//                     color: Colors.white,
//                   ),
//                 ),
//                 GestureDetector(
//                   onTap: (){},
//                   child: const Icon(
//                     FontAwesomeIcons.chrome,
//                     size: 40,
//                     color: Colors.white,
//                   ),
//                 ),
//                 GestureDetector(
//                   onTap: (){},
//                   child: const Icon(
//                     FontAwesomeIcons.discord,
//                     size: 40,
//                     color: Colors.white,
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
// // Strokes
// Container(
//     child: Card(
//       color: const Color(0xfffdfdfd),
//       child: Column(
//         mainAxisSize: MainAxisSize.max,
//         children: <Widget>[
//           //Image
//           ListTile(
//             title: Image.asset('assets/strokes_banner.png',
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
//             title: Text('Strokes Club',
//               style: TextStyle(
//                 fontSize: 25,
//               ),
//             ),
//             subtitle: Text('Official Design Community\nLead: ABC\n           CSE, Qnd Yr ',
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
//                   onTap: (){launch('https://www.instagram.com/strokes_iiitn/');},
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
// //Dimensions
// Container(
//     child: Card(
//       color: const Color(0xff020102),
//       child: Column(
//         mainAxisSize: MainAxisSize.max,
//         children: <Widget>[
//           //Image
//           ListTile(
//             title: Image.asset('assets/dimensions_banner.png',
//               fit: BoxFit.cover,
//               height: 90,
//               alignment: Alignment.center,
//             ),
//           ),
//           const Divider(
//             color: Color(0xffd5e5f0),
//             indent: 10,
//             endIndent: 10,
//           ),
//           //Description
//           const ListTile(
//             title: Text('Dimensions Club',
//               style: TextStyle(
//                 fontSize: 25,
//                   color: Color(0xffd5e5f0),
//               ),
//             ),
//             subtitle: Text('Official AR, VR, XR Community\nLead: Sourav Singh\n           CSE, 3rd Yr ',
//               style: TextStyle(
//                   fontSize: 15,
//                 color: Color(0xffd5e5f0),
//               ),
//             ),
//           ),
//           const Divider(
//             color: Color(0xffd5e5f0),
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
//                   onTap: (){launch('https://www.instagram.com/dimensions.iiitn/');},
//                   child: const Icon(
//                     FontAwesomeIcons.instagramSquare,
//                     size: 40,
//                     color: Color(0xffd5e5f0),
//                   ),
//                 ),
//                 GestureDetector(
//                   onTap: (){},
//                   child: const Icon(
//                     FontAwesomeIcons.linkedin,
//                     size: 40,
//                     color: Color(0xffd5e5f0),
//                   ),
//                 ),
//                 GestureDetector(
//                   onTap: (){},
//                   child: const Icon(
//                     FontAwesomeIcons.twitter,
//                     size: 40,
//                     color: Color(0xffd5e5f0),
//                   ),
//                 ),
//                 GestureDetector(
//                   onTap: (){},
//                   child: const Icon(
//                     FontAwesomeIcons.chrome,
//                     size: 40,
//                     color: Color(0xffd5e5f0),
//                   ),
//                 ),
//                 GestureDetector(
//                   onTap: (){},
//                   child: const Icon(
//                     FontAwesomeIcons.discord,
//                     size: 40,
//                     color: Color(0xffd5e5f0),
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
// // Probe
// Container(
//     child: Card(
//       color: const Color(0xffffffff),
//       child: Column(
//         mainAxisSize: MainAxisSize.max,
//         children: <Widget>[
//           //Image
//           ListTile(
//             title: Image.asset('assets/probe_banner.png',
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
//             title: Text('Probe Community',
//               style: TextStyle(
//                 fontSize: 25,
//               ),
//             ),
//             subtitle: Text('Official Social Media, Photography,\n Videography & Magazine wing\nLead: ABC\n           CSE, Qnd Yr ',
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
//                   onTap: (){launch('https://www.instagram.com/probe.iiitn/');},
//                   child: const Icon(
//                     FontAwesomeIcons.instagramSquare,
//                     size: 40,
//                   ),
//                 ),
//                 GestureDetector(
//                   onTap: (){launch('https://www.linkedin.com/company/probe-iiitn/');},
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
