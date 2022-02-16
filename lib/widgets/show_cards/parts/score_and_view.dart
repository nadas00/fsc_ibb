part of 'package:fsc_ibb/widgets/show_cards/show_card_widget.dart';

class _ScoreAndViews extends StatelessWidget {
  const _ScoreAndViews({
    Key key,
    @required this.showModel,
  }) : super(key: key);

  final ShowModel showModel;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Row(
        children: [
          Flexible(
            child: ScoreWidget(score: showModel.score),
          ),
          const SizedBox(width: 5),
          Flexible(
            child: RichText(
                maxLines: 1,
                softWrap: false,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: showModel.view,
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    TextSpan(
                      text: " Views",
                      style: Theme.of(context).textTheme.caption,
                    )
                  ],
                )),
          )
        ],
      ),
    );
  }
}
