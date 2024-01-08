import 'package:flutter/material.dart';

class ClipTop extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double height = size.height * 0.7;
    double width = size.width;
    Path path = Path()
      ..moveTo(0, height)
      ..lineTo(0, 0)
      ..lineTo(width, 0)
      ..lineTo(width, height)
      ..lineTo(width - 10, height)
      ..lineTo(width - 10, 10)
      ..lineTo(10, 10)
      ..lineTo(10, height)
      ..lineTo(0, height);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class ClipBottom extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double height = size.height * 0.7;
    double width = size.width;
    Path path = Path()
      ..moveTo(0, height)
      ..lineTo(0, size.height)
      ..lineTo(width, size.height)
      ..lineTo(width, height)
      ..lineTo(width - 10, height)
      ..lineTo(width - 10, size.height - 10)
      ..lineTo(10, size.height - 10)
      ..lineTo(10, height)
      ..lineTo(0, height);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
