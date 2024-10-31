import 'package:flutter/material.dart';

class FPElevatedButton extends StatelessWidget {

  final Widget child;
  final EdgeInsetsGeometry? padding;
  final ButtonStyle? style;
  final void Function()? onPressed;

  const FPElevatedButton({
    super.key,
    required this.child,
    this.padding,
    this.onPressed, this.style,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery
          .of(context)
          .size
          .width * 0.5,
      padding: padding,
      child: ElevatedButton(
        onPressed: onPressed,
        style: style,
        child: child,
      ),
    );
  }
}
