import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:km_portfolio/core/router/app_router.dart';
import 'package:km_portfolio/core/theme/app_text_style.dart';
import 'package:km_portfolio/core/widgets/app_text_button.dart';
import 'package:km_portfolio/features/home/presentation/widgets/social_link_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'I am an iOS Native / Flutter Developer',
              style: AppTextStyle.notoSerif(size: 14),
            ),
            Text('MINAMI KYOHEI',
                textAlign: TextAlign.center,
                style: AppTextStyle.notoSerif(size: 56)),
            Container(
              margin: const EdgeInsets.only(bottom: 32),
              child: Wrap(
                direction: Axis.horizontal,
                spacing: 16,
                children: const <Widget>[
                  SocialLinkButton(
                      text: 'Github', url: 'https://github.com/xxminamixx'),
                  SocialLinkButton(text: 'Zenn', url: 'https://zenn.dev/xxminamixx'),
                  SocialLinkButton(
                      text: 'Qiita', url: 'https://qiita.com/xxminamixx'),
                  SocialLinkButton(
                      text: 'Twitter',
                      url: 'https://twitter.com/xxmmminminmmxx'),
                ],
              ),
            ),
            Wrap(
              direction: Axis.vertical,
              spacing: 16,
              children: <Widget>[
                AppTextButton(
                    text: 'Profile',
                    onTapped: () {
                      context.push(AppRoute.profile);
                    }),
                AppTextButton(
                    text: 'Career',
                    onTapped: () {
                      context.push(AppRoute.career);
                    }),
                // AppTextButton(text: 'Skills', onTapped: () { context.push(AppRoute.skills); }),
                // AppTextButton(text: 'Contact', onTapped: () { context.push(AppRoute.contact); }),
              ],
            )
          ],
        ),
      ),
    );
  }
}
