import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'dart:convert';
// import 'dart:io';
// import 'package:attendance_app/pages/profile/model/user.dart';
import 'package:attendance_app/pages/profile/utils/user_preferences.dart';
// import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

AppBar buildAppBar(BuildContext context) {
  // final icon = CupertinoIcons.moon_stars;
  const String title = 'User Profile';
  final user = UserPreferences.getUser();

  return AppBar(
    leading: const BackButton(color: Color(0xff000000)),
    // backgroundColor: Colors.transparent,
    backgroundColor: const Color(0xffff914d).withOpacity(0.80) ,
    elevation: 0,
    title: const Text(title, style: TextStyle(color: Colors.black),),
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
  );
}
