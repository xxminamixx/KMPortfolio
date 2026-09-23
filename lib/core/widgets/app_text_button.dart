import 'package:flutter/material.dart';
import 'package:km_portfolio/core/theme/app_text_style.dart';

class AppTextButton extends StatelessWidget {

  const AppTextButton({
    super.key,
    required this.text,
    required this.onTapped,
    this.fontSize,
  });

  final String? text;
  final VoidCallback? onTapped;
  final double? fontSize;


  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTapped,
      child: Text(text ?? '',
        style: AppTextStyle.notoSerif(size: 18)
      ),
    );
  }

}
