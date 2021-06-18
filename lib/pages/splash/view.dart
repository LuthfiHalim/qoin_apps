import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:flutter/material.dart';

import 'controller.dart';

class SplashPage extends View {
  SplashPage() : super();

  @override
  _SplashPageState createState() => new _SplashPageState();
}

class _SplashPageState extends ViewState<SplashPage, SplashController>
    with WidgetsBindingObserver {
  _SplashPageState() : super(SplashController());

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget get view {
    return Scaffold(
        key: globalKey,
        body: ControlledWidgetBuilder<SplashController>(
            builder: (context, controller) {
          return Container(
            child: Text(controller.userData.login.userName),
          );
        }));
  }
}
