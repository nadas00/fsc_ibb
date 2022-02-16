part of '../../splash_view.dart';

class _SplashSubTitle extends StatelessWidget {
  final String text;
  const _SplashSubTitle({Key key, @required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text, style: Theme.of(context).textTheme.subtitle2);
  }
}
