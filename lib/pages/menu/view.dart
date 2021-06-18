import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:flutter/material.dart';
import 'package:package_info/package_info.dart';
import 'package:qoin_apps/misc/app_constant.dart';

import 'controller.dart';

class MenuPage extends View {
  MenuPage() : super();

  @override
  _MenuPageState createState() => new _MenuPageState();
}

class _MenuPageState extends ViewState<MenuPage, MenuController>
    with WidgetsBindingObserver {
  _MenuPageState() : super(MenuController());

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget get view {
    double scaleWidth = MediaQuery.of(context).size.width / 375;
    return new Scaffold(
      backgroundColor: AppConstants.COLOR_GREY,
      key: globalKey,
      body: ListView(children: <Widget>[
        Container(
          width: 375 * scaleWidth,
          height: 220 * scaleWidth,
          child: Stack(
            alignment: AlignmentDirectional.topCenter,
            children: <Widget>[
              Positioned(
                top: 0,
                left: 0,
                child: Container(
                  width: 210 * scaleWidth,
                  height: 107 * scaleWidth,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(54),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 32 * scaleWidth,
                left: 30 * scaleWidth,
                child: Container(
                  width: 44 * scaleWidth,
                  height: 44 * scaleWidth,
                  decoration: BoxDecoration(
                    color: AppConstants.COLOR_GREY,
                    borderRadius: BorderRadius.all(
                      Radius.circular(22 * scaleWidth),
                    ),
                  ),
                  child: Center(
                    child:
                        Image.asset("lib/assets/images/woman_photo_second.png"),
                  ),
                ),
              ),
              Positioned(
                left: 84 * scaleWidth,
                top: 35 * scaleWidth,
                child: ControlledWidgetBuilder<MenuController>(
                    builder: (context, controller) {
                  return Container(
                    width: 100 * scaleWidth,
                    height: 25 * scaleWidth,
                    child: AutoSizeText(
                      controller.userData.login.userName,
                      maxLines: 1,
                      maxFontSize: 40,
                      minFontSize: 10,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  );
                }),
              ),
              Positioned(
                left: 84 * scaleWidth,
                top: 57 * scaleWidth,
                child: Container(
                  width: 100 * scaleWidth,
                  height: 15 * scaleWidth,
                  child: AutoSizeText(
                    "Seattle, Washington",
                    maxLines: 1,
                    maxFontSize: 40,
                    minFontSize: 10,
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              Positioned(
                right: 28 * scaleWidth,
                top: 40 * scaleWidth,
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                      width: 20 * scaleWidth,
                      height: 20 * scaleWidth,
                      child: Center(
                        child: Icon(Icons.close),
                      )),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 375 * scaleWidth,
          height: 462 * scaleWidth,
          child: Stack(
            children: [
              Positioned(
                top: 6 * scaleWidth,
                left: 30 * scaleWidth,
                child: Container(
                  width: 150 * scaleWidth,
                  height: 20 * scaleWidth,
                  child: AutoSizeText(
                    "Home",
                    maxLines: 1,
                    maxFontSize: 40,
                    minFontSize: 8,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Positioned(
                  left: 0,
                  top: 0,
                  child: Container(
                    width: 4 * scaleWidth,
                    height: 32 * scaleWidth,
                    color: AppConstants.COLOR_ORANGE,
                  )),
              Positioned(
                top: 60 * scaleWidth,
                left: 30 * scaleWidth,
                child: Container(
                  width: 150 * scaleWidth,
                  height: 20 * scaleWidth,
                  child: AutoSizeText(
                    "Profile",
                    maxLines: 1,
                    maxFontSize: 40,
                    minFontSize: 8,
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ),
              Positioned(
                top: 114 * scaleWidth,
                left: 30 * scaleWidth,
                child: Container(
                  width: 150 * scaleWidth,
                  height: 20 * scaleWidth,
                  child: AutoSizeText(
                    "Accounts",
                    maxLines: 1,
                    maxFontSize: 40,
                    minFontSize: 8,
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ),
              Positioned(
                top: 168 * scaleWidth,
                left: 30 * scaleWidth,
                child: Container(
                  width: 150 * scaleWidth,
                  height: 20 * scaleWidth,
                  child: AutoSizeText(
                    "Transactions",
                    maxLines: 1,
                    maxFontSize: 40,
                    minFontSize: 8,
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ),
              Positioned(
                top: 222 * scaleWidth,
                left: 30 * scaleWidth,
                child: Container(
                  width: 150 * scaleWidth,
                  height: 20 * scaleWidth,
                  child: AutoSizeText(
                    "Stats",
                    maxLines: 1,
                    maxFontSize: 40,
                    minFontSize: 8,
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ),
              Positioned(
                top: 276 * scaleWidth,
                left: 30 * scaleWidth,
                child: Container(
                  width: 150 * scaleWidth,
                  height: 20 * scaleWidth,
                  child: AutoSizeText(
                    "Settings",
                    maxLines: 1,
                    maxFontSize: 40,
                    minFontSize: 8,
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ),
              Positioned(
                top: 330 * scaleWidth,
                left: 30 * scaleWidth,
                child: Container(
                  width: 150 * scaleWidth,
                  height: 20 * scaleWidth,
                  child: AutoSizeText(
                    "Help",
                    maxLines: 1,
                    maxFontSize: 40,
                    minFontSize: 8,
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ),
            ],
          ),
        ),
        ControlledWidgetBuilder<MenuController>(builder: (context, controller) {
          return InkWell(
            onTap: controller.onLogOutPressed,
            child: Container(
              width: 180 * scaleWidth,
              height: 25 * scaleWidth,
              child: Stack(
                children: [
                  Positioned(
                    left: 30 * scaleWidth,
                    top: 0,
                    child: Container(
                      width: 18 * scaleWidth,
                      height: 18 * scaleWidth,
                      child: Center(
                        child: Image.asset("lib/assets/images/logout.png"),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 60 * scaleWidth,
                    top: 0,
                    child: Container(
                      alignment: Alignment.center,
                      width: 60 * scaleWidth,
                      height: 25 * scaleWidth,
                      child: AutoSizeText(
                        "Logout",
                        maxLines: 1,
                        maxFontSize: 40,
                        minFontSize: 8,
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
        Container(
          padding: EdgeInsets.fromLTRB(30 * scaleWidth, 40 * scaleWidth, 0, 0),
          child: FutureBuilder<PackageInfo>(
              future: PackageInfo.fromPlatform(),
              builder: (context, snapshot) {
                switch (snapshot.connectionState) {
                  case ConnectionState.waiting:
                    return Text('Version ');
                  default:
                    if (snapshot.hasError)
                      return Text('Version ');
                    else
                      return Text('Version ${snapshot.data?.version}');
                }
              }),
        ),
      ]),
    );
  }
}
