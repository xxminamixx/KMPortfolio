import 'package:flutter/material.dart';
import 'package:km_portfolio/Utility/KMTextStyle.dart';

class KMTextButton extends StatelessWidget {

  const KMTextButton({
    Key? key,
    @required this.text,
    @required this.onTapped,
    this.fontSize,
  }) : super(key: key);

  final String? text;
  final Function? onTapped;
  final double? fontSize;


  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        if (onTapped == null) {
          return;
        }

        onTapped!();
      },
      child: Text(text ?? '',
        style: KMTextStyle.notoSerif(size: 18)
      ),
    );
  }

}