import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

class DashboardController extends Controller with WidgetsBindingObserver {
  DashboardController(): super();
  

  @override
  void initListeners() {
    WidgetsBinding.instance?.addObserver(this);
  }

  @override
  void onDisposed() {
    super.onDisposed();
  }
}