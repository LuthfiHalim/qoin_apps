import 'package:flutter/material.dart';
import 'package:qoin_apps/pages/contract/base_controller.dart';

class DashboardController extends BaseController {
  List<String> names = ["Mickey","Joshpeh", "Luthfi", "Joshua", "Adam", "Budi"];
  DashboardController(): super();
  

  @override
  void initListeners() {
    super.initListeners();
    WidgetsBinding.instance?.addObserver(this);
  }

  @override
  void onDisposed() {
    super.onDisposed();
  }
}