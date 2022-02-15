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
    log.w("Fetching Popular Streams");
    popularStreams = await _homeService.getPopularStreams();
    for (var element in popularStreams) {
      log.i("Popular Stream : ${element.title}");
    }
    setBusyForObject(popularStreams, false);
  }

  getYouMayLikeStreams() async {
    setBusyForObject(youMayLikeStreams, true);
    log.w("Fetching You May Like Streams");
    youMayLikeStreams = await _homeService.getYouMayLikeStreams();
    for (var element in youMayLikeStreams) {
      log.i("You May Like Stream : ${element.title}");
    }
    setBusyForObject(youMayLikeStreams, false);
  }
}
