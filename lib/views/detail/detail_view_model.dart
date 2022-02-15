import 'package:fsc_ibb/model/show/cast_model.dart';
import 'package:fsc_ibb/model/show/show_model.dart';
import 'package:fsc_ibb/views/detail/detail_service.dart';
import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:fsc_ibb/core/logger.dart';

class DetailViewModel extends BaseViewModel {
  Logger log;
  DetailService _detailService;
  List<CastModel> castModels;
  String storyLine;
  ShowModel _showModel;

  setShowModel(ShowModel model) {
    _showModel = model;
  }

  DetailViewModel() {
    this.log = getLogger(this.runtimeType.toString());
    _detailService = DetailService();
  }

  getCastModels() async {
    setBusyForObject(castModels, true);
    castModels = await _detailService.getCasts(_showModel);
    log.d(castModels.length);
    setBusyForObject(castModels, false);
  }

  getStoryLine() async {
    setBusyForObject(storyLine, true);
    storyLine = await _detailService.getStoryLine(_showModel);
    log.d(storyLine);

    setBusyForObject(storyLine, false);
  }
}
