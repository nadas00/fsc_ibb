part of '../../home_view.dart';

class _HomeAppBar extends StatelessWidget with PreferredSizeWidget {
  const _HomeAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const Icon(Icons.menu),
      actions: const [
        Icon(Icons.notifications),
        SizedBox(
          width: 25,
        ),
        Icon(Icons.more_horiz)
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
