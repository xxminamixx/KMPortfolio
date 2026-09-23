import 'package:flutter/material.dart';
import 'package:km_portfolio/core/theme/app_text_style.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
              margin: const EdgeInsets.all(64),
              child: Center(
                  child: Column(
                    children: <Widget> [
                      Text('Contact',
                        style: AppTextStyle.notoSerif(size: 36),
                      ),
                      Text('誠意作成中',
                        style: AppTextStyle.lato(size: 18),
                      )
                    ],
                  )
              )
          )
      ),
    );
  }
}
