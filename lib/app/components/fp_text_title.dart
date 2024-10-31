import 'package:flutter/material.dart';

enum FPSizeTitle {small(size:15.0), normal(size:25.0), largenormal(size:30.0);
  final double size;

  const FPSizeTitle({required this.size});
}

class FPTextTitle extends StatelessWidget {
  final String text;
  final FPSizeTitle size;
  final Color? color;

  const FPTextTitle({
    super.key,
    required this.text,
    required this.size,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: size.size,
        color: color,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
