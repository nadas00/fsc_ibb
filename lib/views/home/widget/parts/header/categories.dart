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
        children: const [
          CategoryMenuItem(
            isSelected: true,
            title: 'All',
          ),
          CategoryMenuItem(
            isSelected: false,
            title: 'Web Show',
          ),
          CategoryMenuItem(
            isSelected: false,
            title: 'Bollywood',
          ),
          CategoryMenuItem(
            isSelected: false,
            title: 'Hollywood',
          ),
          CategoryMenuItem(
            isSelected: false,
            title: 'Buzz videos',
          ),
        ],
      ),
    );
  }
}
