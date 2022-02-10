import 'package:flutter/material.dart' show Colors;
import 'package:flutter/widgets.dart';

LinearGradient get commonGradient {
  return LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    stops: const [0, .3, 1],
    colors: <Color>[
      Colors.deepOrangeAccent.shade100,
      Colors.deepOrangeAccent.shade200,
      Colors.deepOrangeAccent.shade400,
    ],
  );
}
