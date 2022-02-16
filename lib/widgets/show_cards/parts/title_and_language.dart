part of 'package:fsc_ibb/widgets/show_cards/show_card_widget.dart';

class _TitleAndLanguage extends StatelessWidget {
  const _TitleAndLanguage({
    Key key,
    @required this.showModel,
  }) : super(key: key);

  final ShowModel showModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 5),
        Expanded(
          child: Row(
            children: [
              Flexible(
                child: Text(
                  showModel.title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ),
              const SizedBox(width: 5),
              Flexible(
                child: Text(
                  " (${showModel.language})",
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
