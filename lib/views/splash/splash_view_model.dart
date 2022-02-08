import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:fsc_ibb/core/logger.dart';

class SplashViewModel extends BaseViewModel {
  Logger log;

  SplashViewModel() {
    this.log = getLogger(this.runtimeType.toString());
  }
}
