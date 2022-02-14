// [ This is an auto generated file ]

import 'package:flutter/material.dart';
import 'package:fsc_ibb/core/router_constants.dart';

import 'package:fsc_ibb/views/splash/splash_view.dart' as view0;
import 'package:fsc_ibb/views/home/home_view.dart' as view1;
import 'package:fsc_ibb/views/detail/detail_view.dart' as view2;

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashViewRoute:
        return MaterialPageRoute(builder: (_) => view0.SplashView(), settings: settings);
      case homeViewRoute:
        return MaterialPageRoute(builder: (_) => view1.HomeView(), settings: settings);
      case detailViewRoute:
        return MaterialPageRoute(builder: (_) => view2.DetailView(), settings: settings);
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No route defined for ${settings.name}'),
                  ),
                ));
    }
  }
}
