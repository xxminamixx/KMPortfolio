import 'package:flutter/material.dart';
import 'package:km_portfolio/Utility/KMTextStyle.dart';

class SkillsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _mainWidget();
  }

  Widget _mainWidget() {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
            child: Container(
                margin: EdgeInsets.all(64),
                child: Center(
                    child: Column(
                      children: [
                        Container(
                          child: Text('Skills',
                            style: KMTextStyle.notoSerif(size: 36),
                          ),
                        ),
                        Text('誠意作成中',
                          style: KMTextStyle.lato(size: 18),
                        )
                      ],
                    )
                )
            )
        ),
      ),
    );
  }
}