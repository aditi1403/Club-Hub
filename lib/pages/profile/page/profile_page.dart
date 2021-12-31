// import 'package:animated_theme_switcher/animated_theme_switcher.dart';
// import 'dart:convert';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:attendance_app/pages/profile/themes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
// import 'package:flutter/cupertino.dart';
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

  // String name;
  // static const name = user.displayName ?? user.email;
  // var name = user?.displayName ?? 0;

  @override
  Widget build(BuildContext context) {
    late final users = UserPreferences.getUser();
    // var name = user?.displayName ?? 0;


    return Scaffold(
        backgroundColor: const Color(0xffffe88a),
        appBar: buildAppBar(context),
        body: ListView(
          // padding: const EdgeInsets.symmetric(horizontal: 32),
          physics: const BouncingScrollPhysics(),
          children: [
            const SizedBox(height: 20,),
            ProfileWidget(
              imagePath: users.imagePath,
              // imagePath: 'https://images.unsplash.com/photo-1603415526960-f7e0328c63b1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
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
            const SizedBox(height: 20,),
            const Text('Note: This page is solely for display purpose and will be made editable in future app releases.',textAlign: TextAlign.center,style: TextStyle(color: Colors.grey),),
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

  Widget buildName(Usered users) =>
      Column(
        children: [
          Text(
            // name,
            // 'John Brown',
            user.displayName??'',
            // user.displayName!,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(height: 4),
          Text(
            // 'john123@gmail.com',
            // user.email!,
            user.email??'',
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
              // ' A student is a learner. A person who wishes to acquire knowledge and wisdom or skills in a particular field or develops his intellectual capabilities is a student.',
              users.about,
              style: const TextStyle(fontSize: 16, height: 1.4),
            ),
          ],
        ),
      );
}

