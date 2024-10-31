import 'package:flutter/material.dart';

class FPOutlinedButton extends StatelessWidget {

  final Widget child;
  final EdgeInsetsGeometry? padding;
  final void Function()? onPressed;

  const FPOutlinedButton({
    super.key,
    required this.child,
    this.padding,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery
          .of(context)
          .size
          .width,
      padding: padding,
      child: OutlinedButton(
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}
