import 'package:fsc_ibb/core/locator.dart';
import 'package:fsc_ibb/core/router_constants.dart';
import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:fsc_ibb/core/logger.dart';
import 'package:stacked_services/stacked_services.dart';

class SplashViewModel extends BaseViewModel {
  Logger log;

  SplashViewModel() {
    log = getLogger(runtimeType.toString());
  }

  completeSplash() => Future.delayed(const Duration(seconds: 5), () {
        locator<NavigationService>().navigateTo(homeViewRoute);
      });
}
