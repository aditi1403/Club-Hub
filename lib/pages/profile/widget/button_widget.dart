import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final GestureTapCallback? onTap;

  const ButtonWidget({
    Key? key,
    required this.text,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          primary: const Color(0xffff914d),
          onPrimary: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
        ),
        child: Text(text),
        onPressed: onTap,

      );
}
