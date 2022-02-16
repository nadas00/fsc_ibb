part of '../play_button_widget.dart';

class _RoundedBlurredPlayButton extends StatelessWidget {
  const _RoundedBlurredPlayButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 5.0,
          sigmaY: 5.0,
        ),
        child: Container(
          padding: const EdgeInsets.all(8.0),
          color: Colors.grey.withOpacity(0.5),
          child: Container(
            decoration: const ShapeDecoration(
              color: Colors.white,
              shape: CircleBorder(),
            ),
            child: const GradientMasker(
              active: true,
              child: Icon(
                Icons.play_arrow_rounded,
                size: 30,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
