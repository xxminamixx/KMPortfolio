import 'package:flutter/material.dart';
import 'package:km_portfolio/Utility/KMTextStyle.dart';

class KMTextButton extends StatelessWidget {

  final String text;
  final Function onTapped;
  final double fontSize;

  KMTextButton({
    Key key,
    @required this.text,
    @required this.onTapped,
    this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () { onTapped(); },
      child: Text(text,
        style: KMTextStyle.notoSerif(size: 18)
      ),
    );
  }

}