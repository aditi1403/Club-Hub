import 'package:attendance_app/pages/login/ui/shared/globals.dart';
import 'package:flutter/material.dart';
import 'package:attendance_app/pages/login/core/viewmodels/home_model.dart';
import 'package:provider/provider.dart';

class TextFieldWidget extends StatelessWidget {
  final String hintText;
  final IconData prefixIconData;
  final IconData suffixIconData;
  final bool obscureText;
  // final Function onChanged;

  Function(String value)?onChanged;

  TextFieldWidget({Key? key,
    required this.hintText,
    required this.prefixIconData,
    required this.suffixIconData,
    required this.obscureText,
    this.onChanged
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final model= Provider.of<HomeModel>(context);
    return TextField(
        onChanged: onChanged,
        obscureText: obscureText,
        style: const TextStyle(
        color: Global.mediumBlue,
        fontSize: 14.0,
      ),
      cursorColor: Global.mediumBlue,
      decoration: InputDecoration(
        labelText: hintText,
        prefixIcon: Icon(
          prefixIconData,
          size: 18,
          color: Global.mediumBlue,
        ),
        filled: true,
        enabledBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Global.mediumBlue),
        ),
          suffixIcon: GestureDetector(
            onTap: () {
              model.isVisible = !model.isVisible;
            },
            child: Icon(
              suffixIconData,
              size: 18,
              color: Global.mediumBlue,
            ),
          ),
        ),
      );
  }
}

