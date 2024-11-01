import 'package:flutter/material.dart';

enum FPSizeTitle {small(size:17.0), normal(size:20.0), large(size:25.0);
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
