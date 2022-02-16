part of '../../../detail_view.dart';

class _HeaderContent extends StatelessWidget {
  const _HeaderContent({
    Key key,
    @required this.currentShowModel,
  }) : super(key: key);

  final ShowModel currentShowModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const _WatchTrailerButton(),
        const SizedBox(height: 25),
        _Title(currentShowModel: currentShowModel),
        const SizedBox(height: 10),
        _LanguageAndCategory(currentShowModel: currentShowModel),
        const SizedBox(height: 25),
      ],
    );
  }
}

class _WatchTrailerButton extends StatelessWidget {
  const _WatchTrailerButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Align(
            alignment: Alignment.bottomRight,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(50.0),
                topLeft: Radius.circular(50.0),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 5.0,
                  sigmaY: 5.0,
                ),
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  color: Colors.white.withOpacity(0.2),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const PlayButtonWidget.rounded(),
                      const SizedBox(width: 8),
                      GradientMasker(
                        active: true,
                        child: Text(
                          "Watch Trailer",
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _LanguageAndCategory extends StatelessWidget {
  const _LanguageAndCategory({
    Key key,
    @required this.currentShowModel,
  }) : super(key: key);

  final ShowModel currentShowModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(currentShowModel.language),
        const Text(" | "),
        Text(currentShowModel.detailModel.category.split(", ").join(" | ")),
      ],
    );
  }
}

class _Title extends StatelessWidget {
  const _Title({
    Key key,
    @required this.currentShowModel,
  }) : super(key: key);

  final ShowModel currentShowModel;

  @override
  Widget build(BuildContext context) {
    return Text(
      currentShowModel.title,
      style: Theme.of(context).textTheme.headline5,
    );
  }
}
