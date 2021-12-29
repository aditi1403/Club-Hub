// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:attendance_app/pages/login/ui/shared/globals.dart';
// import 'package:attendance_app/main.dart';
// import 'package:attendance_app/pages/home.dart';



class ButtonWidget extends StatelessWidget {
  final String title;
  final bool hasBorder;
  final GestureTapCallback? onTap;
  // Function()?onTap;

  const ButtonWidget({Key? key,
    required this.title,
    required this.hasBorder,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Ink(
        decoration: BoxDecoration(
          color: hasBorder ? Global.white : Global.mediumBlue,
          borderRadius: BorderRadius.circular(10),
          border: hasBorder ? Border.all(
                  color: Global.mediumBlue,
                  width: 1.0,
                )
              : const Border.fromBorderSide(BorderSide.none),
        ),
        child: InkWell(
          onTap: (){Navigator.pushNamed(context, '/home');},
          borderRadius: BorderRadius.circular(10),
          child: Container(
            height: 60.0,
            child: Center(
              child: Text(
                title,
                style: TextStyle(
                  color: hasBorder ? Global.mediumBlue : Global.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
