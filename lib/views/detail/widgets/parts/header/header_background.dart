part of '../../../detail_view.dart';

class _HeaderBackground extends StatelessWidget {
  const _HeaderBackground({
    Key key,
    @required this.currentShowModel,
  }) : super(key: key);

  final ShowModel currentShowModel;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.network(
          currentShowModel.coverUrl,
          fit: BoxFit.cover,
        ),
        Container(
          alignment: Alignment.bottomCenter,
          height: MediaQuery.of(context).size.height * .5,
          decoration: bottomVignetteDecoration,
        ),
      ],
    );
  }

  BoxDecoration get bottomVignetteDecoration {
    return const BoxDecoration(
      gradient: LinearGradient(
        stops: [0.1, 1],
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
        colors: [Colors.black, Colors.black12],
      ),
    );
  }
}
