import 'package:flutter/material.dart';
import 'package:js_bookstore/core/colors.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.width,
    required this.content,
    this.color,
    this.onTap,
    this.buttonStyle,
  });

  final double width;
  final String content;
  final Color? color;
  final VoidCallback? onTap;
  final ButtonStyle? buttonStyle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
        style: buttonStyle ??
            ElevatedButton.styleFrom(
                //default btn color
                backgroundColor: color ?? AppColor.primaryColor,
                foregroundColor: color == null ? Colors.white : Colors.black,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
                padding: const EdgeInsets.symmetric(vertical: 16)),
        onPressed: onTap,
        child: Text(content),
      ),
    );
  }
}
