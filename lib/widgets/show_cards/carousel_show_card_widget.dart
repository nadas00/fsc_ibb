import 'package:flutter/material.dart';

class CarouselShowCard extends StatelessWidget {
  const CarouselShowCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.circular(45),
      ),
      height: 200,
    );
  }
}
