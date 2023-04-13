import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ReusableMethods {
  static Color colorDark = const Color(0xff0e1e40);
  static Color colorLight = const Color(0xfffff4f0);
  static Color colorAnnouncement = const Color(0xff2196f3).withOpacity(0.8);
  static Color colorAssignment = const Color(0xffff6340).withOpacity(0.8);
  static Color colorPeople = const Color(0xff7c4dff).withOpacity(0.8);
  static Color colorGrades = const Color(0xff009688).withOpacity(0.8);
  static Color colorProfile1 = const Color(0xffA84D6F).withOpacity(0.8);
  static Color colorProfile2 = const Color(0xffE47668).withOpacity(0.8);
  static Color colorProfile3 = const Color(0xffFFB25D).withOpacity(0.8);

  static bool isValidEmail(String email) {
    RegExp emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    return emailRegExp.hasMatch(email);
  }

  static Future<bool> isLoggedIn() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isLoggedIn = prefs.getBool('isLoggedIn') ?? false;
    return isLoggedIn;
  }

  static Future<void> setLoggedInTrue() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isLoggedIn', true);
  }

  static Future<void> setLoggedInFalse() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isLoggedIn', false);
  }

  static Future<void> setUserId(int id) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('id', id);
  }

  static Future<int?> getUserId() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getInt('id');
  }
}
