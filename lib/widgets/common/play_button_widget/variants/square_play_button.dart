part of '../play_button_widget.dart';

class _SquarePlayButton extends StatelessWidget {
  const _SquarePlayButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const ShapeDecoration(
        color: Colors.white,
        shape: ContinuousRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(25))),
      ),
      alignment: Alignment.center,
      height: 35,
      width: 35,
      child: Container(
        decoration: ShapeDecoration(
          gradient: commonGradient,
          shape: const CircleBorder(),
        ),
        child: const Icon(Icons.play_arrow_rounded),
        width: 25,
        height: 25,
      ),
    );
  }
}
