import 'package:flutter/material.dart';
import 'package:km_portfolio/Utility/KMTextStyle.dart';

class SkillsWidget extends StatelessWidget {
  const SkillsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _mainWidget();
  }

  Widget _mainWidget() {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(64),
          child: Center(
            child: Column(
              children: <Widget> [
                Text(
                  'Skills',
                  style: KMTextStyle.notoSerif(size: 36),
                ),
                Text(
                  '誠意作成中',
                  style: KMTextStyle.lato(size: 18),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
