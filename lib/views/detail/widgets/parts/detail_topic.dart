part of '../../detail_view.dart';

class _DetailTopic extends StatelessWidget {
  final String text;
  const _DetailTopic(
    this.text, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headline5,
    );
  }
}
