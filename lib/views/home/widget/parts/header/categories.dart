part of '../../../home_view.dart';

class _Categories extends StatelessWidget {
  const _Categories({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          CategoryMenuItem(
            isSelected: true,
            title: context.translation.all,
          ),
          CategoryMenuItem(
            isSelected: false,
            title: context.translation.web_show,
          ),
          CategoryMenuItem(
            isSelected: false,
            title: context.translation.hollywood,
          ),
          CategoryMenuItem(
            isSelected: false,
            title: context.translation.bollywood,
          ),
          CategoryMenuItem(
            isSelected: false,
            title: context.translation.buzz_videos,
          ),
        ],
      ),
    );
  }
}
