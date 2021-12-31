import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:attendance_app/pages/profile/model/user.dart';

class UserPreferences {
  static late SharedPreferences _preferences;

  static const _keyUser = 'user';
  static const myUser = Usered(
    imagePath:
    'https://images.unsplash.com/photo-1603415526960-f7e0328c63b1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
    name: 'Sarah Abs',
    email: 'sarah.abs@gmail.com',
    about:
    ' A student is a learner. A person who wishes to acquire knowledge and wisdom or skills in a particular field or develops his intellectual capabilities is a student.  In order to be an ideal student, a person should possess the qualities of respect, love, self-discipline, self-control, faith, concentration, truthfulness, conviction, strength and firm determination. ',
    isDarkMode: false,
  );

  static Future init() async =>
      _preferences = await SharedPreferences.getInstance();

  static Future setUser(Usered user) async {
    final json = jsonEncode(user.toJson());

    await _preferences.setString(_keyUser, json);
  }

  static Usered getUser() {
    final json = _preferences.getString(_keyUser);

    return json == null ? myUser : Usered.fromJson(jsonDecode(json));
  }
}