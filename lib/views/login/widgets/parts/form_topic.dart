part of '../../login_view.dart';

class _FormTopic extends StatelessWidget {
  const _FormTopic({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text("Movie App", style: Theme.of(context).textTheme.headline4.copyWith(fontWeight: FontWeight.bold, color: Colors.white));
  }
}
