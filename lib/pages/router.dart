import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qoin_apps/pages/dashboard/view.dart';
import 'package:qoin_apps/pages/login/view.dart';
import 'package:qoin_apps/pages/menu/view.dart';
import 'package:qoin_apps/pages/pages.dart';
import 'package:qoin_apps/pages/splash/view.dart';

class Router {
  RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();

  Router();

  Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Pages.splash:
        return _buildRoute(settings, new SplashPage());
      case Pages.menu:
        return _buildRoute(settings, new MenuPage());
      case Pages.login:
        return _buildRoute(settings, new LoginPage());
      case Pages.dashboard:
        return _buildRoute(settings, new DashboardPage());
      default:
        return _buildRoute(settings, new SplashPage());
    }
  }

  PageRouteBuilder _buildRoute(RouteSettings settings, Widget builder) {
    return new PageRouteBuilder(
      settings: settings,
      pageBuilder: (BuildContext context, Animation<double> animation,
              Animation<double> secondaryAnimation) =>
          builder,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = Offset(1.0, 0.0);
        var end = Offset.zero;
        var curve = Curves.ease;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }
}
