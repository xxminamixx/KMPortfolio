import 'package:flutter/material.dart';
import 'package:km_portfolio/core/theme/app_text_style.dart';

class SkillsScreen extends StatelessWidget {
  const SkillsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(64),
          child: Center(
            child: Column(
              children: <Widget> [
                Text(
                  'Skills',
                  style: AppTextStyle.notoSerif(size: 36),
                ),
                Text(
                  '誠意作成中',
                  style: AppTextStyle.lato(size: 18),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
