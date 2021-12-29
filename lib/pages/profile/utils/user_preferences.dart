import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:attendance_app/pages/profile/model/user.dart';

class UserPreferences {
  static late SharedPreferences _preferences;

  static const _keyUser = 'user';
  static const myUser = Usered(
    imagePath:
    'https://images.unsplash.com/photo-1554151228-14d9def656e4?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=333&q=80',
    name: 'Sarah Abs',
    email: 'sarah.abs@gmail.com',
    about:
    'An ideal student is always disciplined and lives in accordance with conduct. He is always conscious of his duties and responsibilities towards his parents and elders.  He is truthful, generous, kind-hearted and optimistic. He has a quest for knowledge. He maintains good health and a sound mind.',
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