import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.child,
    required this.onPressed,
    this.disabled,
    this.padding,
    this.borderRadius,
    this.backgroundColor,
    this.border,
  });

  final Widget child;
  final GestureTapCallback? onPressed;
  final bool? disabled;
  final EdgeInsetsGeometry? padding;
  final double? borderRadius;
  final Color? backgroundColor;
  final BorderSide? border;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: padding ?? const EdgeInsets.fromLTRB(18, 8, 18, 8),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 4)),
        backgroundColor: backgroundColor,
        side: border,
      ),
      onPressed: disabled != null && disabled == true ? null : onPressed,
      child: child,
    );
  }
}
