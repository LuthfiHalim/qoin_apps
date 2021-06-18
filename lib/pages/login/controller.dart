import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:intl/intl.dart';

class LoginController extends Controller with WidgetsBindingObserver {
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
    Timer.periodic(Duration(seconds: 1), (timer) {
      time = timeFormat.format(DateTime.now());
      date = dateFormat.format(DateTime.now());
      refreshUI();
    });
  }

  @override
  void onDisposed() {
    super.onDisposed();
  }
}
