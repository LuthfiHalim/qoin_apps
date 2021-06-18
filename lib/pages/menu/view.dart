import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:flutter/material.dart';

import 'controller.dart';

class MenuPage extends View {
  MenuPage() : super();

  @override
  _MenuPageState createState() => new _MenuPageState(MenuController());
}

class _MenuPageState extends ViewState<MenuPage, MenuController>
    with WidgetsBindingObserver {
  _MenuPageState(MenuController controller) : super(controller);

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget get view {
    double scaleWidth = MediaQuery.of(context).size.width / 360;
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Menu",
          style: TextStyle(fontSize: 22, color: Colors.white),
        ),
        leading: BackButton(
          color: Colors.white,
        ),
      ),
      body: ListView(children: <Widget>[
        Container(
          height: 560 * scaleWidth,
          child: Stack(
            alignment: AlignmentDirectional.topCenter,
            children: <Widget>[
              Positioned(
                top: 140 * scaleWidth,
                child: Container(
                  height: 100 * scaleWidth,
                  width: 100 * scaleWidth,
                  child: Image.asset(
                      'lib/app/ui/assets/images/under_construction.png'),
                ),
              ),
              Positioned(
                top: 280 * scaleWidth,
                child: Text(
                  'UNDER CONSTRUCTION',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    color: Colors.blue,
                  ),
                ),
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
      ]),
    );
  }

  // @override
  // Widget get view => throw UnimplementedError();
}
