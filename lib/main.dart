import 'package:attendance_app/pages/inside_club_category/icc/ace_page.dart';
import 'package:attendance_app/pages/inside_club_category/icc/innovation_page.dart';
import 'package:attendance_app/pages/inside_club_category/icc/ipr_page.dart';

import 'pages/inside_club_category/roobaroo/orator_page.dart';
import 'pages/login/ui/views/home_page.dart';
import 'pages/login/provider/google_sign_in.dart';
import 'pages/inside_club_category/roobaroo/dance_page.dart';
import 'pages/inside_club_category/roobaroo/ebsb_page.dart';
import 'pages/inside_club_category/roobaroo/hindi_raj_page.dart';
import 'pages/inside_club_category/roobaroo/social_out_page.dart';
import 'pages/inside_club_category/roobaroo/drama_page.dart';
import 'pages/inside_club_category/tech_plethora/probe_page.dart';
import 'pages/inside_club_category/tech_plethora/dimensions_page.dart';
import 'pages/inside_club_category/tech_plethora/dot_slash_page.dart';
import 'pages/inside_club_category/tech_plethora/iotics_page.dart';
import 'pages/inside_club_category/tech_plethora/sn_page.dart';
import 'pages/inside_club_category/tech_plethora/strokes_page.dart';
import 'pages/inside_club_category/roobaroo/music_page.dart';
import 'package:attendance_app/pages/profile/utils/user_preferences.dart';
import 'pages/profile/page/edit_profile_page.dart';
import 'pages/profile/page/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/services.dart';
import 'pages/club_category/tech_plethora_page.dart';
import 'pages/club_category/music_club_page.dart';
import 'pages/club_category/icc_page.dart';
import 'pages/login/ui/views/home_view.dart';
import 'pages/login/core/viewmodels/home_model.dart';
import 'pages/home.dart';
import "package:firebase_core/firebase_core.dart";


Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  await Firebase.initializeApp();

  await UserPreferences.init();

  runApp(const Login());
}

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return
      ChangeNotifierProvider(
        create: (context) => HomeModel(),
        child: ChangeNotifierProvider(
          create: (context) => GoogleSignInProvider(),
          child: MaterialApp(
            home: const HomePage(),
            debugShowCheckedModeBanner: false,
            initialRoute: '/',
            routes: {
              '/homeview': (context) => const HomeView(),
              '/home': (context) => const Home(),
              '/tech': (context) => const TechPlethora(),
              '/icc': (content) => const ICC(),
              '/music': (context) => const Music(),
              '/profile': (context) => const Profile(),
              '/edit_profile': (context) => const EditProfilePage(),
              '/sn_page': (context) => const SkillsNights(),
              '/iotics_page': (context) => const IoTics(),
              '/dot_slash_page': (context) => const DotSlash(),
              '/strokes_page': (context) => const Strokes(),
              '/dimensions_page': (context) => const Dimensions(),
              '/probe_page': (context) => const Probe(),
              '/crescendo_page': (context) => const Crescendo(),
              '/drama_page': (context) => const Drama(),
              '/dance_page': (context) => const Dance(),
              '/esbs_page': (context) => const EBSB(),
              '/hindi_raj_page': (context) => const HindiRaj(),
              '/orator_page': (context) => const Orator(),
              '/social_out_page': (context) => const SocialOut(),
              '/ipr_page': (context) => const IPR(),
              '/innov_page': (context) => const Innov(),
              '/ace_page': (context) => const ACE(),

            },
          ),
        )

    );
  }
}




