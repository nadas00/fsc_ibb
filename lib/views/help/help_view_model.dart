import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:fsc_ibb/core/logger.dart';

class HelpViewModel extends BaseViewModel {
  Logger log;

  HelpViewModel() {
    this.log = getLogger(this.runtimeType.toString());
  }
}
