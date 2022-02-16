part of '../../../home_view.dart';

class _SearchField extends StatelessWidget {
  const _SearchField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: TextField(
            decoration: InputDecoration(
              hintText: context.translation.search_for_movie_series_dots,
              fillColor: Colors.white12,
              filled: true,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ),
        const SizedBox(width: 20),
        Container(
          width: 50,
          height: 50,
          child: const Icon(Icons.search),
          decoration: ShapeDecoration(
            gradient: commonGradient,
            shape: const ContinuousRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(25))),
          ),
        ),
      ],
    );
  }
}
