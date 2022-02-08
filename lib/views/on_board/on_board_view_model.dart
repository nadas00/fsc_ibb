import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:fsc_ibb/core/logger.dart';

class OnBoardViewModel extends BaseViewModel {
  Logger log;

  OnBoardViewModel() {
    this.log = getLogger(this.runtimeType.toString());
  }
}
