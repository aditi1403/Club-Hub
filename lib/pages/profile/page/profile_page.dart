// import 'package:animated_theme_switcher/animated_theme_switcher.dart';
// import 'dart:convert';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:attendance_app/pages/profile/themes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:attendance_app/pages/profile/model/user.dart';
import 'package:attendance_app/pages/profile/utils/user_preferences.dart';
import 'package:attendance_app/pages/profile/widget/appbar_widget.dart';
import 'package:attendance_app/pages/profile/widget/button_widget.dart';
import 'package:attendance_app/pages/profile/widget/numbers_widget.dart';
import 'package:attendance_app/pages/profile/widget/profile_widget.dart';
import 'package:attendance_app/pages/profile/page/edit_profile_page.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  // @override
  // void initState() {
  //   super.initState();
  //   UserPreferences().whenComplete((){
  //     setState(() {});
  //   });
  // }
  final user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    // const user = UserPreferences.myUser;
    late final users = UserPreferences.getUser();
    // final user = FirebaseAuth.instance.currentUser!;

    return Scaffold(
        backgroundColor: const Color(0xffffe88a),
        appBar: buildAppBar(context),
        body: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            const SizedBox(height: 20,),
            ProfileWidget(
              imagePath: users.imagePath,
              isEdit: false,
              onClicked: () async {
                await Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const EditProfilePage()),
                );
                setState(() {});
              },
            ),
            const SizedBox(height: 24),
            buildName(users),
            const SizedBox(height: 24),
            Center(child: buildUpgradeButton()),
            const SizedBox(height: 24),
            const NumbersWidget(),
            const SizedBox(height: 48),
            buildAbout(users),
          ],
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
      // ),
    );
  }

  Widget buildName(Usered users) => Column(
        children: [
          Text(
            user.displayName!,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(height: 4),
          Text(
            user.email!,
            style: const TextStyle(color: Colors.grey),
          )
        ],
      );

  Widget buildUpgradeButton() => ButtonWidget(
        text: 'Edit Profile',
        onTap: () {
          Navigator.pushNamed(context, '/edit_profile');
          },
      );

  Widget buildAbout(Usered users) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'About',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              users.about,
              style: const TextStyle(fontSize: 16, height: 1.4),
            ),
          ],
        ),
      );
}

