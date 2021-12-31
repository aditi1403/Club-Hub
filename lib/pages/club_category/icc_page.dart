import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class ICC extends StatefulWidget {
  const ICC({Key? key}) : super(key: key);

  @override
  State<ICC> createState() => _ICCState();
}

class _ICCState extends State<ICC> {
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
                          child: Image.asset('assets/icc_cover.png',
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
                      child: const Text('INNOVATION COUNCIL CLUB',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 40,
                          fontFamily: 'Comfortaa',
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Container(
                      padding: const EdgeInsets.only(left:15.0, right: 15.0),
                      child: const Text('We create awareness, educate, nurture and inculcate a culture of innovation amongst students and enable them to generate new ideas and become more innovative in their outlook.\nStudents come in conjunction and build up strategies on their futuristics ideas to uplift the society and ease of living.\n\nInnovation Council Club is a synergy of: ',
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
                        overlayColor: Colors.transparent,
                        overlayOpacity: 0.5,
                        spacing: 15,
                        spaceBetweenChildren: 15,
                        closeManually: true,
                        children: [
                          // ACE
                          SpeedDialChild(
                              child: const Icon(Icons.emoji_objects, color: Color(0xffe21f27),),
                              label: 'ACE',
                              backgroundColor: Colors.black,
                              onTap: (){
                                isDialOpen.value = false;
                                Navigator.pushNamed(context, '/ace_page');
                              }
                          ),
                          //Innovation
                          SpeedDialChild(
                              child: const Icon(Icons.psychology, color: Colors.black,),
                              label: 'Innovation',
                              onTap: (){
                                isDialOpen.value = false;
                                Navigator.pushNamed(context, '/innov_page');
                              }
                          ),
                          //IPR
                          SpeedDialChild(
                              child: const Icon(Icons.groups,color: Colors.black,),
                              label: 'IPR',
                              onTap: (){
                                isDialOpen.value = false;
                                Navigator.pushNamed(context, '/ipr_page');
                              }
                          ),
                        ],
                      ),
                      // ),
                    ),
                    const SizedBox(height: 40,),

                    //Clubs
                    // # i. E-cell wing
                    // ii. Innovation wing
                    // iii. IPR wing

                    //ACE
                    // Container(
                    //     child: Card(
                    //       color: const Color(0xfff3eeea),
                    //       child: Column(
                    //         mainAxisSize: MainAxisSize.max,
                    //         children: <Widget>[
                    //           //Image
                    //           ListTile(
                    //             title: Image.asset('assets/e_cell_banner.png',
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
                    //             title: Text('ACE Community',
                    //               style: TextStyle(
                    //                 fontSize: 25,
                    //               ),
                    //             ),
                    //             subtitle: Text('Official Entrepreneurship Cell\nLead: Hardik Jain\n           ECE, 2nd Yr ',
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
                    //                   onTap: (){launch('https://www.instagram.com/ecell_iiitn/');},
                    //                   child: const Icon(
                    //                     FontAwesomeIcons.instagramSquare,
                    //                     size: 40,
                    //                   ),
                    //                 ),
                    //                 GestureDetector(
                    //                   onTap: (){launch('https://www.linkedin.com/company/ace-iiitn/');},
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
                    // // Innovation Wing
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
                    //             title: Text('Innovation Wing',
                    //               style: TextStyle(
                    //                 fontSize: 25,
                    //               ),
                    //             ),
                    //             subtitle: Text('Official Innovating Community\nLead: ABC\n           CSE, Qnd Yr ',
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
                    // // IPR wing
                    // Container(
                    //     child: Card(
                    //       color: const Color(0xfffefefe),
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
                    //             title: Text('IPR WIng',
                    //               style: TextStyle(
                    //                 fontSize: 25,
                    //               ),
                    //             ),
                    //             subtitle: Text('Official IPR Community\nLead: ABC\n           CSE, Qnd Yr ',
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
} // ICC Class
