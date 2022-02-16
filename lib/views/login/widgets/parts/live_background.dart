part of '../../login_view.dart';

class _LiveBackGround extends StatelessWidget {
  const _LiveBackGround({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image(
      image: CacheImageService.instance.loginBackgroundImage,
      fit: BoxFit.fill,
    );
  }
}
