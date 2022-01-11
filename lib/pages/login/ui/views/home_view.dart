import 'package:attendance_app/pages/login/provider/google_sign_in.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:attendance_app/pages/login/core/viewmodels/home_model.dart';
import 'package:attendance_app/pages/login/ui/shared/globals.dart';
// import 'package:attendance_app/pages/login/ui/widgets/button_widget.dart';
import 'package:attendance_app/pages/login/ui/widgets/textfield_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:attendance_app/pages/login/ui/widgets/wave_widget.dart';
// import 'package:attendance_app/main.dart';
// import 'package:attendance_app/pages/home.dart';


class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bool keyboardOpen = MediaQuery.of(context).viewInsets.bottom > 0;
    final model = Provider.of<HomeModel>(context);

    return Scaffold(
      backgroundColor: Global.white,
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height - 200,
            color: Global.mediumBlue,
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeOutQuad,
            top: keyboardOpen ? -size.height / 3.7 : 0.0,
            child: WaveWidget(
              size: size,
              yOffset: size.height / 3.0,
              color: Global.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Text(
                  'Login',
                  style: TextStyle(
                    color: Global.white,
                    fontSize: 40.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextFieldWidget(
                  hintText: 'Email',
                  obscureText: false,
                  prefixIconData: Icons.mail_outline,
                  suffixIconData: model.isValid ? Icons.check:Icons.yard,
                  onChanged: (value) {
                    model.isValidEmail(value);
                  },
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    TextFieldWidget(
                      hintText: 'Password',
                      obscureText: model.isVisible ? false : true,
                      prefixIconData: Icons.lock_outline,
                      suffixIconData: model.isVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const Text(
                      'Forgot password?',
                      style: TextStyle(
                        color: Global.mediumBlue,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: const Color(0xffff914d),
                      minimumSize: const Size(double.infinity, 55)
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                    },
                  child: const Text('Login',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xffffe88a),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      primary: const Color(0xffffe88a),
                      // onSurface: Color(0xffff914d),
                      // onPrimary: Colors.black,
                      side: const BorderSide(width: 1.0, color: Color(0xffff914d)),
                      minimumSize: const Size(double.infinity, 55)
                  ),
                  onPressed: () {
                    final provider = Provider.of<GoogleSignInProvider>(context, listen: false);
                    provider.googleLogin();
                  },
                  icon: const FaIcon(
                    FontAwesomeIcons.google,
                    color: Color(0xffff914d),
                  ),
                  label: const Text('Sign Up',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xffff914d),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


