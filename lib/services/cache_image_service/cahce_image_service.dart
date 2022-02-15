import 'package:flutter/material.dart';

class CacheImageService {
  static final CacheImageService _instace = CacheImageService._init();
  static CacheImageService get instance => _instace;
  CacheImageService._init();

  BuildContext _context;
  NetworkImage loginBackgroundImage = const NetworkImage(
    'https://media.giphy.com/media/xT9IgN8YKRhByRBzMI/giphy-downsized-large.gif',
  );

  init(BuildContext context) async {
    _context = context;
    await precacheImage(loginBackgroundImage, _context);
  }
}
