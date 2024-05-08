import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Color color;
  final Color textColor;
  final Widget child;
  const DefaultButton({
    super.key,
    required this.onPressed,
    required this.color,
    required this.textColor,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: child,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(color),
        textStyle:
            MaterialStateProperty.all<TextStyle>(TextStyle(color: textColor)),
      ),
    );
  }
}
