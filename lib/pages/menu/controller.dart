import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

class MenuController extends Controller with WidgetsBindingObserver {
  MenuController(): super();
  

  @override
  void initListeners() {
    WidgetsBinding.instance?.addObserver(this);
  }

  @override
  void onDisposed() {
    super.onDisposed();
  }
}