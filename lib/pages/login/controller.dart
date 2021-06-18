import 'dart:async';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:qoin_apps/domains/login.dart';
import 'package:qoin_apps/pages/contract/base_controller.dart';
import 'package:qoin_apps/pages/dashboard/view.dart';

class LoginController extends BaseController {
  String time = "06:20 PM";
  String temp = "34° C";
  String date = "Nov.10.2020 | Wednesday";
  final dateFormat = new DateFormat('MMM.dd.yyyy | EEEE');
  final timeFormat = new DateFormat('hh:mm a');

  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  LoginController() : super();

  @override
  void initListeners() {
    super.initListeners();
    Timer.periodic(Duration(seconds: 1), (timer) {
      time = timeFormat.format(DateTime.now());
      date = dateFormat.format(DateTime.now());
      refreshUI();
    });
  }

  void onSignInPressed() {
    super.userData.save(Login(
        userName: userNameController.text, password: passwordController.text));
    Navigator.pushReplacement(
      getContext(),
      MaterialPageRoute<void>(
        builder: (BuildContext context) => DashboardPage(),
      ),
    );
  }

  @override
  void onDisposed() {
    super.onDisposed();
  }
}
