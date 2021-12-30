import 'package:flutter/material.dart';
// import 'pages/profile/page/edit_profile_page.dart';

class NumbersWidget extends StatelessWidget {
  const NumbersWidget({Key? key}) : super(key: key);

  // get g_state => null;

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          buildButton(context, 'Student/\nTeacher', 'Profession'),
          // Column(
          //   mainAxisSize: MainAxisSize.min,
          //   mainAxisAlignment: MainAxisAlignment.start,
          //   children: const <Widget>[
          //     Text( 'blah',
          //       style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          //     ),
          //     SizedBox(height: 2),
          //     Text( 'Year',
          //       style: TextStyle(fontWeight: FontWeight.bold),
          //     ),
          //   ],
          // ),
          buildDivider(),
          // buildButton(context, 'CSE', 'Branch'),
          MaterialButton(
          padding: const EdgeInsets.symmetric(vertical: 4),
          onPressed: () {},
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: const <Widget>[
                //b_state = true? "ECE" : "CSE",
                Text( 'CSE/\nECE',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                SizedBox(height: 2),
                Text( 'Branch',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          buildDivider(),
          // buildButton(context, '👧🏻👦🏻', 'Gender'),
          MaterialButton(
            padding: const EdgeInsets.symmetric(vertical: 4),
            onPressed: () {},
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: const <Widget>[
                Text(
                  '👧🏻 👦🏻',
                  // g_state == true? "👧🏻" : "👦🏻",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                SizedBox(height: 2),
                Text( 'Gender',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      );
  Widget buildDivider() => const SizedBox(
        height: 24,
        child: VerticalDivider(color: Color(0xff000000),),
      );

  Widget buildButton(BuildContext context, String value, String text) =>
      MaterialButton(
        padding: const EdgeInsets.symmetric(vertical: 4),
        onPressed: () {},
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              value,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            const SizedBox(height: 2),
            Text(
              text,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      );
}
