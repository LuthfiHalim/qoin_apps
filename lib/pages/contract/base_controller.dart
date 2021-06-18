import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:qoin_apps/misc/user_data.dart';

class BaseController extends Controller with WidgetsBindingObserver {
  bool isLoading = false;
  UserData userData = UserData();
  BaseController() {
    WidgetsBinding.instance?.addObserver(this);
  }
  @override
  @mustCallSuper
  void initListeners() {
    userData.loadData().then((value){
      refreshUI();
    });
  }

  void dismissLoading() {
    isLoading = false;
    refreshUI();
  }

  void showLoading() {
    isLoading = true;
    refreshUI();
  }
}
