part of '../../detail_view.dart';

class _CastList extends StatelessWidget {
  final List<CastModel> castModelList;
  const _CastList({
    Key key,
    @required this.castModelList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          castModelList.length,
          (index) => Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: CastWidget(castModel: castModelList[index]),
          ),
        ),
      ),
    );
  }
}
