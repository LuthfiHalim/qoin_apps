import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qoin_apps/misc/app_constant.dart';
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
      body: ListView(
        children: <Widget>[
          Container(
            width: 375 * scaleWidth,
            height: 380 * scaleWidth,
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
                  left: 159 * scaleWidth,
                  child: Container(
                    alignment: Alignment.center,
                    height: 33 * scaleWidth,
                    width: 107 * scaleWidth,
                    child: ControlledWidgetBuilder<LoginController>(
                        builder: (context, controller) {
                      return AutoSizeText(
                        controller.time,
                        maxFontSize: 40,
                        minFontSize: 20,
                        maxLines: 1,
                        style: TextStyle(fontSize: 40),
                      );
                    }),
                  ),
                ),
                Positioned(
                  left: 286 * scaleWidth,
                  top: 38 * scaleWidth,
                  child: Container(
                    width: 18 * scaleWidth,
                    height: 13 * scaleWidth,
                    child: Image.asset("lib/assets/images/cloud.png"),
                  ),
                ),
                Positioned(
                  top: 35 * scaleWidth,
                  left: 315 * scaleWidth,
                  child: Container(
                    alignment: Alignment.center,
                    height: 20 * scaleWidth,
                    width: 34 * scaleWidth,
                    child: ControlledWidgetBuilder<LoginController>(
                        builder: (context, controller) {
                      return AutoSizeText(
                        controller.temp,
                        maxFontSize: 40,
                        minFontSize: 10,
                        maxLines: 1,
                        style: TextStyle(fontSize: 40),
                      );
                    }),
                  ),
                ),
                Positioned(
                  top: 70 * scaleWidth,
                  left: 159 * scaleWidth,
                  child: Container(
                    alignment: Alignment.center,
                    height: 20 * scaleWidth,
                    width: 158 * scaleWidth,
                    child: ControlledWidgetBuilder<LoginController>(
                        builder: (context, controller) {
                      return AutoSizeText(
                        controller.date,
                        maxFontSize: 40,
                        minFontSize: 10,
                        maxLines: 1,
                        style: TextStyle(fontSize: 40, color: Colors.grey),
                      );
                    }),
                  ),
                ),
                Positioned(
                  left: 159 * scaleWidth,
                  top: 113,
                  child: Container(
                    width: 61 * scaleWidth,
                    height: 40 * scaleWidth,
                    child: Image.asset("lib/assets/images/logo_qoin.png"),
                  ),
                ),
                Positioned(
                  left: 159 * scaleWidth,
                  top: 171 * scaleWidth,
                  child: Container(
                    alignment: Alignment.center,
                    width: 63 * scaleWidth,
                    height: 32 * scaleWidth,
                    child: ControlledWidgetBuilder<LoginController>(
                        builder: (context, controller) {
                      return AutoSizeText(
                        "Qoin",
                        maxFontSize: 40,
                        minFontSize: 10,
                        maxLines: 1,
                        style: GoogleFonts.ubuntu(
                            textStyle: TextStyle(fontSize: 40)),
                      );
                    }),
                  ),
                ),
                Positioned(
                  left: 159 * scaleWidth,
                  top: 220 * scaleWidth,
                  child: Container(
                    alignment: Alignment.center,
                    width: 189 * scaleWidth,
                    height: 110 * scaleWidth,
                    child: ControlledWidgetBuilder<LoginController>(
                        builder: (context, controller) {
                      return AutoSizeText(
                        """Open An Account For Digital E-Wallet Solutions.Instant Payouts. 

Join For Free.""",
                        maxFontSize: 14,
                        minFontSize: 10,
                        maxLines: 5,
                        style: GoogleFonts.ubuntu(
                            textStyle:
                                TextStyle(fontSize: 40, color: Colors.grey)),
                      );
                    }),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 73 * scaleWidth,
          ),
          Container(
            width: 375 * scaleWidth,
            height: 22 * scaleWidth,
            padding: EdgeInsets.fromLTRB(25 * scaleWidth, 0, 0, 0),
            child: AutoSizeText(
              "Username",
              maxFontSize: 40,
              minFontSize: 10,
              maxLines: 1,
              style: TextStyle(fontSize: 40),
            ),
          ),
          Container(
            height: 4 * scaleWidth,
          ),
          Container(
            width: 375 * scaleWidth,
            height: 50 * scaleWidth,
            padding:
                EdgeInsets.fromLTRB(25 * scaleWidth, 0, 25 * scaleWidth, 0),
            child: ControlledWidgetBuilder<LoginController>(
                builder: (context, controller) {
              return TextFormField(
                controller: controller.userNameController,
                decoration: new InputDecoration(
                  hintText: "Username",
                  fillColor: Colors.white,
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(6.0),
                    borderSide: new BorderSide(),
                  ),
                ),
                maxLines: 1,
                style: TextStyle(fontSize: 16, color: Colors.grey),
              );
            }),
          ),
          Container(
            height: 24 * scaleWidth,
          ),
          Container(
            width: 375 * scaleWidth,
            height: 22 * scaleWidth,
            padding: EdgeInsets.fromLTRB(25 * scaleWidth, 0, 0, 0),
            child: AutoSizeText(
              "Password",
              maxFontSize: 40,
              minFontSize: 10,
              maxLines: 1,
              style: TextStyle(fontSize: 40),
            ),
          ),
          Container(
            height: 4 * scaleWidth,
          ),
          Container(
            width: 375 * scaleWidth,
            height: 50 * scaleWidth,
            padding:
                EdgeInsets.fromLTRB(25 * scaleWidth, 0, 25 * scaleWidth, 0),
            child: ControlledWidgetBuilder<LoginController>(
                builder: (context, controller) {
              return TextFormField(
                controller: controller.passwordController,
                decoration: new InputDecoration(
                  hintText: "Password",
                  fillColor: Colors.white,
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(6.0),
                    borderSide: new BorderSide(),
                  ),
                ),
                maxLines: 1,
                style: TextStyle(fontSize: 16, color: Colors.grey),
              );
            }),
          ),
          Container(
            height: 26 * scaleWidth,
          ),
          Container(
            width: 375 * scaleWidth,
            height: 54 * scaleWidth,
            padding:
                EdgeInsets.fromLTRB(23 * scaleWidth, 0, 23 * scaleWidth, 0),
            child: ElevatedButton(
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  backgroundColor:
                      MaterialStateProperty.all(AppConstants.COLOR_ORANGE)),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Sign in",
                    style: TextStyle(fontSize: 16, color: Colors.black,fontWeight: FontWeight.bold),
                  ),
                  Container(
                    width: 20,
                  ),
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.black,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
