// import 'dart:convert';
// import 'package:shared_preferences/shared_preferences.dart';
import 'dart:io';
import 'dart:ui';
import 'package:attendance_app/pages/profile/model/user.dart';
import 'package:attendance_app/pages/profile/utils/user_preferences.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'package:attendance_app/pages/profile/widget/appbar_widget.dart';
import 'package:attendance_app/pages/profile/widget/button_widget.dart';
import 'package:attendance_app/pages/profile/widget/profile_widget.dart';
import 'package:attendance_app/pages/profile/widget/textfield_widget.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  // User user = UserPreferences.myUser;
  late final Usered users;
  final user = FirebaseAuth.instance.currentUser!;
  File? image;
  bool g_state = false;
  bool b_state = false;
  bool y_state = false;


  @override
  void initState() {
    super.initState();
    // _initUser().whenComplete((){
    //   setState(() {});
    // });
    users = UserPreferences.getUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffe88a),
      appBar: buildAppBar(context),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        physics: const BouncingScrollPhysics(),
        children: [
          ProfileWidget(
            imagePath: users.imagePath,
            isEdit: true,
            onClicked: () async {
              try {
                final image = await ImagePicker().pickImage(
                    source: ImageSource.gallery);

                if (image == null) return;

                final imageTemporary = File(image.path);
                setState(() => this.image = imageTemporary);
              } on PlatformException catch (e) {
                print('Failed to pick Image: $e');
              }

              // final directory = await getApplicationDocumentsDirectory();
              // final name = basename(image.path);
              // final imageFile = File('${directory.path}/$name');
              // final newImage = await File(image.path).copy(imageFile.path);

              // setState(() => users = users.copy(imagePath: newImage.path));
              },
            ),
            const SizedBox(height: 24),
            // TextFieldWidget(
            //   label: 'Full Name',
            //   text: user.displayName!,
            //   onChanged: (name) {},
            // ),
            const Text(
              "Gender",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Divider(
              height: 15,
              thickness: 2,
            ),
            Flex(
              direction: Axis.horizontal,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text('Male',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    // Transform.scale(
                    //   scale: 0.7,
                    //   child: CupertinoSwitch(
                    //     activeColor: const Color(0xffff914d),
                    //     // value: isActive,
                    //     value: g_state,
                    //     onChanged: (value) {
                    //       g_state = value;
                    //       setState((){
                    //
                    //       });
                    //     },
                    //   ),
                    // ),
                  ],
                ),
                Transform.scale(
                  scale: 0.7,
                  child: CupertinoSwitch(
                    activeColor: const Color(0xffff914d),
                    // value: isActive,
                    value: g_state,
                    onChanged: (value) {
                      g_state = value;
                      setState((){

                      });
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('Female',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    // Transform.scale(
                    //   scale: 0.7,
                    //   child: CupertinoSwitch(
                    //     activeColor: const Color(0xffff914d),
                    //     // value: isActive,
                    //     value: g_state,
                    //     onChanged: (value) {
                    //       g_state = value;
                    //       setState((){
                    //
                    //       });
                    //     },
                    //   ),
                    // ),
                  ],
                ),
                // buildNotificationOptionRow("Male", false),
                // buildNotificationOptionRow("Female", true),
              ],
            ),
            const SizedBox(height: 15),
            // TextFieldWidget(
            //   label: 'Email',
            //   text: user.email!,
            //   onChanged: (email) {},
            // ),
            const Text(
              "Branch",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Divider(
              height: 15,
              thickness: 2,
            ),
            Flex(
              direction: Axis.horizontal,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('CSE',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    // Transform.scale(
                    //   scale: 0.7,
                    //   child: CupertinoSwitch(
                    //     activeColor: const Color(0xffff914d),
                    //     // value: isActive,
                    //     value: b_state,
                    //     onChanged: (value) {
                    //       b_state = value;
                    //       setState((){
                    //
                    //       });
                    //     },
                    //   ),
                    // ),
                  ],
                ),
                Transform.scale(
                  scale: 0.7,
                  child: CupertinoSwitch(
                    activeColor: const Color(0xffff914d),
                    // value: isActive,
                    value: b_state,
                    onChanged: (value) {
                      b_state = value;
                      setState((){

                      });
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('ECE',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    // Transform.scale(
                    //   scale: 0.7,
                    //   child: CupertinoSwitch(
                    //     activeColor: const Color(0xffff914d),
                    //     // value: isActive,
                    //     value: b_state,
                    //     onChanged: (value) {
                    //       b_state = value;
                    //       setState((){
                    //
                    //       });
                    //     },
                    //   ),
                    // ),
                  ],
                ),
                // buildNotificationOptionRow("CSE", true),
                // buildNotificationOptionRow("ECE", false),
              ],
            ),
            const SizedBox(height: 15),
            const Text(
              "Year",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Divider(
              height: 15,
              thickness: 2,
            ),
            Flex(
              direction: Axis.horizontal,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('Teacher',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    // Transform.scale(
                    //   scale: 0.7,
                    //   child: CupertinoSwitch(
                    //     activeColor: const Color(0xffff914d),
                    //     // value: isActive,
                    //     value: y_state,
                    //     onChanged: (value) {
                    //       y_state = value;
                    //       setState((){
                    //
                    //       });
                    //     },
                    //   ),
                    // ),
                  ],
                ),
                Transform.scale(
                  scale: 0.7,
                  child: CupertinoSwitch(
                    activeColor: const Color(0xffff914d),
                    // value: isActive,
                    value: y_state,
                    onChanged: (value) {
                      y_state = value;
                      setState((){

                      });
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('Student',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    // Transform.scale(
                    //   scale: 0.7,
                    //   child: CupertinoSwitch(
                    //     activeColor: const Color(0xffff914d),
                    //     // value: isActive,
                    //     value: y_state,
                    //     onChanged: (value) {
                    //       y_state = value;
                    //       setState((){
                    //
                    //       });
                    //     },
                    //   ),
                    // ),
                  ],
                ),
                // buildNotificationOptionRow("1st", false),
                // buildNotificationOptionRow("2nd", true),
              ],
            ),
            // Flex(
            //   direction: Axis.horizontal,
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //     Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       children: [
            //         const Text('3rd',
            //           style: TextStyle(
            //             fontSize: 18,
            //             fontWeight: FontWeight.w500,
            //             color: Colors.black,
            //           ),
            //         ),
            //         Transform.scale(
            //           scale: 0.7,
            //           child: CupertinoSwitch(
            //             activeColor: const Color(0xffff914d),
            //             // value: isActive,
            //             value: y_state,
            //             onChanged: (value) {
            //               y_state = value;
            //               setState((){
            //
            //               });
            //             },
            //           ),
            //         ),
            //       ],
            //     ),
            //     Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       children: [
            //         const Text('4th',
            //           style: TextStyle(
            //             fontSize: 18,
            //             fontWeight: FontWeight.w500,
            //             color: Colors.black,
            //           ),
            //         ),
            //         Transform.scale(
            //           scale: 0.7,
            //           child: CupertinoSwitch(
            //             activeColor: const Color(0xffff914d),
            //             // value: isActive,
            //             value: y_state,
            //             onChanged: (value) {
            //               y_state = value;
            //               setState((){
            //
            //               });
            //             },
            //           ),
            //         ),
            //       ],
            //     ),
            //     // buildNotificationOptionRow("3rd", false),
            //     // buildNotificationOptionRow("4th", false),
            //   ],
            // ),
            const SizedBox(height: 24),
            TextFieldWidget(
              label: 'About',
              text: users.about,
              maxLines: 5,
              onChanged: (about) {},
            ),
            // const Text(
            //   "About",
            //   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            // ),
            // const Divider(
            //   height: 15,
            //   thickness: 2,
            // ),
            const SizedBox(height: 24),
            ButtonWidget(
              text: 'Save',
              onTap: () {
                UserPreferences.setUser(users);
                Navigator.of(context).pop();
              },
            ),
            const SizedBox(height: 20,),
            const Text('Note: This page is solely for display purpose and will be made editable in future app releases.',textAlign: TextAlign.center,style: TextStyle(color: Colors.grey),),

        ],
        ),
    );
  }
}

Row buildNotificationOptionRow(String title, bool isActive) {
  bool state = false;
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        title,
        style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.black,
        ),
      ),
      Transform.scale(
          scale: 0.7,
          child: CupertinoSwitch(
            activeColor: const Color(0xffff914d),
            // value: isActive,
            value: state,
            onChanged: (value) {
              state = value;
              // setState((){
              //
              // });
            },
          ),
      ),
    ],
  );
}
