import 'package:flutter/material.dart';
import 'package:fsc_ibb/core/locator.dart';
import 'package:fsc_ibb/core/router_constants.dart';
import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:fsc_ibb/core/logger.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../main.dart';

class SplashViewModel extends BaseViewModel {
  BuildContext _context;
  setContext(BuildContext context) {
    _context = context;
  }

  Logger log;

  SplashViewModel() {
    log = getLogger(runtimeType.toString());
  }

  completeSplash() async {
    await CachedImageStorage.instance.init(_context);
    locator<NavigationService>().clearStackAndShow(loginViewRoute);
  }
}
