import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:fsc_ibb/core/logger.dart';

class HomeViewModel extends BaseViewModel {
  Logger log;

  HomeViewModel() {
    this.log = getLogger(this.runtimeType.toString());
  }
}
