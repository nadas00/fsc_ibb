import 'package:fsc_ibb/model/show/cast_model.dart';
import 'package:fsc_ibb/model/show/show_model.dart';

class ShowDetailModel {
  String storyLine;
  String category;
  String duration;
  List<CastModel> starCast;
  List<ShowModel> recomended;
  ShowDetailModel({
    this.storyLine,
    this.category,
    this.duration,
    this.starCast,
    this.recomended,
  });
}
