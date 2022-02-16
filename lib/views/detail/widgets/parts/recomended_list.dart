part of '../../detail_view.dart';

class _RecomendedList extends StatelessWidget {
  const _RecomendedList({
    Key key,
    @required this.currentShowModel,
  }) : super(key: key);

  final ShowModel currentShowModel;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          3,
          (index) {
            final recomendedModel = currentShowModel.getRecomended(currentShowModel.id);
            return Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: ShowCard(
                showModel: recomendedModel[index],
              ),
            );
          },
        ),
      ),
    );
  }
}
