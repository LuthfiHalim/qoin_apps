import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:qoin_apps/misc/user_data.dart';
import 'package:qoin_apps/pages/dashboard/view.dart';
import 'package:qoin_apps/pages/login/view.dart';

class SplashController extends Controller {
  UserData userData = UserData();
  SplashController() : super();

  @override
  void initListeners() {
    userData.loadData().then((login) {
      print(login.userName);
      if (login.userName == "") {
        Navigator.pushReplacement(
          getContext(),
          MaterialPageRoute<void>(
            builder: (BuildContext context) => LoginPage(),
          ),
        );
      } else {
        Navigator.pushReplacement(
          getContext(),
          MaterialPageRoute<void>(
            builder: (BuildContext context) => DashboardPage(),
          ),
        );
      }
    });
  }

  @override
  void onDisposed() {
    super.onDisposed();
  }
}
