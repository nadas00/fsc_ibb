import 'package:fsc_ibb/model/show/cast_model.dart';
import 'package:fsc_ibb/model/show/show_model.dart';

class DetailService {
  Future<List<CastModel>> getCasts(ShowModel showModel) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return showModel.detailModel.starCast;
  }

  Future<String> getStoryLine(ShowModel showModel) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return showModel.detailModel.storyLine;
  }
}
