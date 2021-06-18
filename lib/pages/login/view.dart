import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:flutter/material.dart';
import 'controller.dart';

class LoginPage extends View {
  LoginPage() : super();

  @override
  _LoginPageState createState() => new _LoginPageState(LoginController());
}

class _LoginPageState extends ViewState<LoginPage, LoginController>
    with WidgetsBindingObserver {
  _LoginPageState(LoginController controller) : super(controller);

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget get view {
    double scaleWidth = MediaQuery.of(context).size.width / 375;
    return new Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            width: 375 * scaleWidth,
            height: 380 * scaleWidth,
            color: Colors.red,
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: 0,
                  left: -40 * scaleWidth,
                  child: Container(
                    height: 380 * scaleWidth,
                    width: 267 * scaleWidth,
                    child: Image.asset("lib/assets/images/login_banner.png"),
                  ),
                ),
                Positioned(
                  top: 30 * scaleWidth,
                  child: Container(
                    height: 33 * scaleWidth,
                    width: 107 * scaleWidth,
                    
                  )
                ),
                Positioned(
                  top: 320 * scaleWidth,
                  child: Text(
                    'Please Check Back Later',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
