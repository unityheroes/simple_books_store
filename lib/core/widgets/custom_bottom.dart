import 'package:flutter/material.dart';
import 'package:simple_books_store/core/utils/styles.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({
    super.key,
    required this.onPressed,
    this.borderRadius,
    required this.text,
    required this.textColor,
    required this.backgroundColor,
  });
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final VoidCallback? onPressed;
  final BorderRadius? borderRadius;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(16),
            )),
        onPressed: () {},
        child: Text(
          text,
          style: Styles.textStyle18.copyWith(
            color: textColor,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
