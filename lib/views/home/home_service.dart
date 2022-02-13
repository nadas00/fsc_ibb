import 'package:fsc_ibb/model/show/show_model.dart';

class HomeService {
  Future<List<ShowModel>> getPopularStreams() async {
    await Future.delayed(const Duration(milliseconds: 500));
    return <ShowModel>[
      ShowModel.sample1(),
      ShowModel.sample2(),
      ShowModel.sample3(),
    ];
  }

  Future<List<ShowModel>> getYouMayLikeStreams() async {
    await Future.delayed(const Duration(milliseconds: 500));
    return <ShowModel>[
      ShowModel.sample3(),
      ShowModel.sample4(),
      ShowModel.sample1(),
    ];
  }
}
