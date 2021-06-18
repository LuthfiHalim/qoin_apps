import 'package:flutter/material.dart';
import 'package:qoin_apps/pages/contract/base_controller.dart';
import 'package:qoin_apps/pages/login/view.dart';

class MenuController extends BaseController {
  MenuController() : super();

  @override
  void initListeners() {
    super.initListeners();
  }

  onLogOutPressed() {
    userData.clear();
    Navigator.pushReplacement(
      getContext(),
      MaterialPageRoute<void>(
        builder: (BuildContext context) => LoginPage(),
      ),
    );
  }

  @override
  void onDisposed() {
    super.onDisposed();
  }
}
