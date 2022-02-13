import 'package:fsc_ibb/model/show/show_model.dart';
import 'package:fsc_ibb/views/home/home_service.dart';
import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:fsc_ibb/core/logger.dart';

class HomeViewModel extends BaseViewModel {
  HomeService _homeService;
  List<ShowModel> popularStreams;
  List<ShowModel> youMayLikeStreams;

  Logger log;

  HomeViewModel() {
    log = getLogger(runtimeType.toString());
    _homeService = HomeService();
  }

  getPopularStreams() async {
    setBusyForObject(popularStreams, true);
    popularStreams = await _homeService.getPopularStreams();
    setBusyForObject(popularStreams, false);
  }

  getYouMayLikeStreams() async {
    setBusyForObject(youMayLikeStreams, true);
    youMayLikeStreams = await _homeService.getYouMayLikeStreams();
    setBusyForObject(youMayLikeStreams, false);
  }
}
