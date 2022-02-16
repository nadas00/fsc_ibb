part of '../play_button_widget.dart';

class _RoundedPlayButton extends StatelessWidget {
  const _RoundedPlayButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const ShapeDecoration(
        color: Colors.white,
        shape: CircleBorder(),
      ),
      child: const GradientMasker(
          active: true,
          child: Icon(
            Icons.play_arrow_rounded,
            size: 30,
          )),
      width: 35,
      height: 35,
    );
  }
}
