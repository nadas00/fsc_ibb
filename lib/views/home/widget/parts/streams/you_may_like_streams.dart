part of '../../../home_view.dart';

class _YouMayLikeStreams extends StatelessWidget {
  const _YouMayLikeStreams({Key key, @required this.viewModel}) : super(key: key);

  final HomeViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          ShowModel currentShowModel = viewModel.youMayLikeStreams[index];
          return ShowCard(showModel: currentShowModel);
        },
        separatorBuilder: (context, index) {
          return const SizedBox(width: 25);
        },
        itemCount: viewModel?.youMayLikeStreams?.length ?? 0,
      ),
    );
  }
}
