import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qoin_apps/misc/app_constant.dart';

import 'controller.dart';

class DashboardPage extends View {
  DashboardPage() : super();

  @override
  _DashboardPageState createState() => new _DashboardPageState();
}

class _DashboardPageState extends ViewState<DashboardPage, DashboardController>
    with WidgetsBindingObserver {
  _DashboardPageState() : super(DashboardController());

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget get view {
    double scaleWidth = MediaQuery.of(context).size.width / 375;
    return new Scaffold(
      key: globalKey,
      body: ListView(children: <Widget>[
        Container(
          width: 375 * scaleWidth,
          height: 112 * scaleWidth,
          child: Stack(
            children: <Widget>[
              Positioned(
                left: 25 * scaleWidth,
                top: 31 * scaleWidth,
                child: Container(
                  width: 47 * scaleWidth,
                  height: 31 * scaleWidth,
                  child: Image.asset("lib/assets/images/logo_qoin.png"),
                ),
              ),
              Positioned(
                left: 82 * scaleWidth,
                top: 30 * scaleWidth,
                child: Container(
                  alignment: Alignment.center,
                  width: 63 * scaleWidth,
                  height: 32 * scaleWidth,
                  child: AutoSizeText(
                    "Qoin",
                    maxFontSize: 40,
                    minFontSize: 10,
                    maxLines: 1,
                    style:
                        GoogleFonts.ubuntu(textStyle: TextStyle(fontSize: 40)),
                  ),
                ),
              ),
              Positioned(
                left: 157 * scaleWidth,
                top: 39 * scaleWidth,
                child: ControlledWidgetBuilder<DashboardController>(
                    builder: (context, controller) {
                  return Container(
                    width: 120 * scaleWidth,
                    height: 21 * scaleWidth,
                    child: AutoSizeText(
                      "Hi, ${controller.userData.login.userName}",
                      maxFontSize: 40,
                      minFontSize: 10,
                      maxLines: 1,
                      style: GoogleFonts.ubuntu(
                          textStyle: TextStyle(fontSize: 40)),
                    ),
                  );
                }),
              ),
              Positioned(
                  left: 331 * scaleWidth,
                  top: 37 * scaleWidth,
                  child: ControlledWidgetBuilder<DashboardController>(
                      builder: (context, controller) {
                    return InkWell(
                      onTap: controller.onMenuPressed,
                      child: Container(
                        width: 19 * scaleWidth,
                        height: 19 * scaleWidth,
                        child: Image.asset("lib/assets/images/menu.png"),
                      ),
                    );
                  })),
            ],
          ),
        ),
        Container(
          width: 375 * scaleWidth,
          height: 25 * scaleWidth,
          padding: EdgeInsets.fromLTRB(25 * scaleWidth, 0, 0, 0),
          child: AutoSizeText(
            "Account Overview",
            maxFontSize: 40,
            minFontSize: 10,
            maxLines: 1,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          width: 325 * scaleWidth,
          height: 116 * scaleWidth,
          decoration: BoxDecoration(
              color: AppConstants.COLOR_GREY,
              borderRadius: BorderRadius.all(Radius.circular(12))),
          margin: EdgeInsets.fromLTRB(25 * scaleWidth, 20 * scaleWidth,
              25 * scaleWidth, 40 * scaleWidth),
          child: Stack(
            children: [
              Positioned(
                left: 25 * scaleWidth,
                top: 26 * scaleWidth,
                child: Container(
                  width: 80 * scaleWidth,
                  height: 37 * scaleWidth,
                  child: AutoSizeText(
                    "20,600",
                    maxLines: 1,
                    minFontSize: 10,
                    maxFontSize: 40,
                    style: TextStyle(fontSize: 40),
                  ),
                ),
              ),
              Positioned(
                left: 25 * scaleWidth,
                top: 71 * scaleWidth,
                child: Container(
                  width: 100 * scaleWidth,
                  height: 188 * scaleWidth,
                  child: AutoSizeText(
                    "Current balance",
                    maxLines: 1,
                    minFontSize: 10,
                    maxFontSize: 40,
                    style: TextStyle(fontSize: 40),
                  ),
                ),
              ),
              Positioned(
                right: 22 * scaleWidth,
                top: 31 * scaleWidth,
                child: Container(
                  width: 54 * scaleWidth,
                  height: 54 * scaleWidth,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Icon(Icons.add),
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(30 * scaleWidth)),
                        ),
                        backgroundColor: MaterialStateProperty.all(
                            AppConstants.COLOR_ORANGE)),
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          width: 375 * scaleWidth,
          height: 45 * scaleWidth,
          child: Stack(
            children: [
              Positioned(
                left: 25 * scaleWidth,
                top: 0 * scaleWidth,
                child: Container(
                  width: 94 * scaleWidth,
                  height: 25 * scaleWidth,
                  child: AutoSizeText(
                    "Send Money",
                    maxFontSize: 40,
                    minFontSize: 10,
                    maxLines: 1,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Positioned(
                right: 25 * scaleWidth,
                top: 0 * scaleWidth,
                child: Container(
                  width: 24 * scaleWidth,
                  height: 24 * scaleWidth,
                  child: Image.asset("lib/assets/images/scan_barcode.png"),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 375 * scaleWidth,
          height: 120 * scaleWidth,
          child: Stack(
            children: [
              Positioned(
                left: 0 * scaleWidth,
                top: 0 * scaleWidth,
                child: Container(
                  width: 100 * scaleWidth,
                  height: 120 * scaleWidth,
                  child: Center(
                    child: Container(
                      width: 54 * scaleWidth,
                      height: 54 * scaleWidth,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Icon(Icons.add),
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(30 * scaleWidth)),
                            ),
                            backgroundColor: MaterialStateProperty.all(
                                AppConstants.COLOR_ORANGE)),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 0,
                top: 0,
                child: Container(
                  width: 275 * scaleWidth,
                  height: 120 * scaleWidth,
                  child: ControlledWidgetBuilder<DashboardController>(
                      builder: (context, controller) {
                    return ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: controller.names.length,
                        separatorBuilder: (context, index) {
                          return Container(width: 10 * scaleWidth);
                        },
                        itemBuilder: (context, index) {
                          return Container(
                            width: 100 * scaleWidth,
                            height: 120 * scaleWidth,
                            decoration: BoxDecoration(
                                color: AppConstants.COLOR_GREY,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12))),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 29 * scaleWidth,
                                  top: 22 * scaleWidth,
                                  child: Container(
                                    width: 44 * scaleWidth,
                                    height: 44 * scaleWidth,
                                    child: Image.asset(index % 2 == 0
                                        ? "lib/assets/images/man_photo_first.png"
                                        : "lib/assets/images/man_photo_second.png"),
                                  ),
                                ),
                                Positioned(
                                  left: 10 * scaleWidth,
                                  top: 80 * scaleWidth,
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 80 * scaleWidth,
                                    height: 19 * scaleWidth,
                                    child: AutoSizeText(
                                      controller.names[index],
                                      maxLines: 1,
                                      minFontSize: 8,
                                      maxFontSize: 20,
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        });
                  }),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 375 * scaleWidth,
          height: 85 * scaleWidth,
          child: Stack(
            children: [
              Positioned(
                left: 25 * scaleWidth,
                top: 40 * scaleWidth,
                child: Container(
                  width: 94 * scaleWidth,
                  height: 25 * scaleWidth,
                  child: AutoSizeText(
                    "Services",
                    maxFontSize: 40,
                    minFontSize: 10,
                    maxLines: 1,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Positioned(
                right: 25 * scaleWidth,
                top: 40 * scaleWidth,
                child: Container(
                  width: 24 * scaleWidth,
                  height: 24 * scaleWidth,
                  child: Image.asset("lib/assets/images/services.png"),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(25 * scaleWidth, 0, 25 * scaleWidth, 0),
          width: 375 * scaleWidth,
          height: 212 * scaleWidth,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomBox(
                    title: "Send Money",
                    asset: "lib/assets/images/send_money.png",
                  ),
                  CustomBox(
                    title: "Receive Money",
                    asset: "lib/assets/images/receive_money.png",
                  ),
                  CustomBox(
                    title: "Mobile Prepaid",
                    asset: "lib/assets/images/mobile_prepaid.png",
                  ),
                  CustomBox(
                    title: "Electricity Bill",
                    asset: "lib/assets/images/electricity_bill.png",
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomBox(
                    title: "Cashback Offer",
                    asset: "lib/assets/images/cashback_offer.png",
                  ),
                  CustomBox(
                    title: "Movie Tickets",
                    asset: "lib/assets/images/movie_tickets.png",
                  ),
                  CustomBox(
                    title: "Flight Tickets",
                    asset: "lib/assets/images/flight_tickets.png",
                  ),
                  CustomBox(
                    title: "More Options",
                    asset: "lib/assets/images/more_options.png",
                  ),
                ],
              )
            ],
          ),
        )
      ]),
    );
  }
}

class CustomBox extends StatelessWidget {
  final String asset;
  final String title;
  const CustomBox({Key? key, required this.asset, this.title = ""})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double scaleWidth = MediaQuery.of(context).size.width / 375;
    return Container(
      width: 60 * scaleWidth,
      height: 96 * scaleWidth,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              alignment: Alignment.center,
              width: 60 * scaleWidth,
              height: 30 * scaleWidth,
              child: AutoSizeText(
                title,
                textAlign: TextAlign.center,
                maxLines: 2,
                maxFontSize: 40,
                minFontSize: 8,
                style: TextStyle(fontSize: 14),
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              width: 60 * scaleWidth,
              height: 60 * scaleWidth,
              decoration: BoxDecoration(
                  color: AppConstants.COLOR_GREY,
                  borderRadius: BorderRadius.all(Radius.circular(12))),
              child: Center(
                child: Container(
                  width: 24 * scaleWidth,
                  height: 24 * scaleWidth,
                  child: Image.asset(asset),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
