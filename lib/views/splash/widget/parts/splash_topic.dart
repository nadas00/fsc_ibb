part of '../../splash_view.dart';

class _SplashTopic extends StatelessWidget {
  final String text;
  const _SplashTopic({Key key, @required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GradientMasker(
      active: true,
      child: Text(text, style: Theme.of(context).textTheme.headline4),
    );
  }
}
