import 'package:flutter/material.dart';

ThemeData get defaultTheme => ThemeData.dark().copyWith(
      scaffoldBackgroundColor: Colors.black,
      appBarTheme: const AppBarTheme().copyWith(color: Colors.black),
    );
