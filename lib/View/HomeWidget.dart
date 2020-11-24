import 'package:flutter/material.dart';
import 'package:km_portfolio/Utility/Const.dart';
import 'package:km_portfolio/Utility/Extension/WidgetExtension.dart';
import 'package:km_portfolio/Utility/KMTextStyle.dart';
import 'package:km_portfolio/Utility/KMTextButton.dart';
import 'package:km_portfolio/Utility/Screen.dart';
import 'package:km_portfolio/Utility/URLLauncher.dart';
import 'package:km_portfolio/View/CarrerWidget/CareerWidget.dart';
import 'package:km_portfolio/View/ContactWidget.dart';
import 'package:km_portfolio/View/ProfileWidget.dart';
import 'package:km_portfolio/View/SkillsWidget.dart';
import 'package:km_portfolio/View/WorksWidget.dart';

class HomeWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Screen(context);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'I am an iOS / Android engineer',
              style: KMTextStyle.notoSerif(size: 14),
            ),
            Text(
              'MINAMI KYOHEI',
              textAlign: TextAlign.center,
              style: KMTextStyle.notoSerif(size: 56)
            ),
            Container(
              margin: EdgeInsets.only(bottom: 32),
              child: Wrap(
                direction: Axis.horizontal,
                spacing: 16,
                children: [
                  linkButton(text: 'Github', url: 'https://github.com/xxminamixx'),
                  linkButton(text: 'Zenn', url: 'https://zenn.dev/xxminamixx'),
                  linkButton(text: 'Qiita', url: 'https://qiita.com/xxminamixx'),
                  linkButton(text: 'Twitter', url: 'https://twitter.com/xxmmminminmmxx'),
                ],
              ),
            ),
            Wrap(
              direction: Axis.vertical,
              spacing: 16,
              children: [
                KMTextButton(text: 'Profile', onTapped: () { push(context, ProfileWidget(), Const.route.profile); }),
                KMTextButton(text: 'Career', onTapped: () { push(context, CareerWidget.instance(), Const.route.career); }),
                // KMTextButton(text: 'Works', onTapped: () { push(context, WorksWidget(), Const.route.works); }),
                // KMTextButton(text: 'Skills', onTapped: () { push(context, SkillsWidget(), Const.route.skills); }),
                // KMTextButton(text: 'Contact', onTapped: () { push(context, ContactWidget(), Const.route.contact); }),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget linkButton({
    @required String text,
    @required String url
  }) {
    return Container(
      child: Column(
        children: [
          ClipOval(
            child: Container(
              color: Colors.grey[300],
              child: IconButton(
                iconSize: 28,
                icon: Icon(
                  Icons.link_rounded,
                  color: Colors.white,
                  size: 28,
                ),
                tooltip: text,
                onPressed: () { URLLauncher.open(url); },
              ),
            ),
          ),
          Text(text,
            style: KMTextStyle.notoSerif(size: 12),
          )
        ],
      ),
    );
  }

  Widget twitterIconButton() {
    return Container(
      child: GestureDetector(
        onTap: () { URLLauncher.open('https://twitter.com/xxmmminminmmxx'); },
        child: Column(
          children: [
            ClipOval(
              child: Image.asset(
                'images/Twitter_Logo_WhiteOnImage.png',
                width: 36,
                height: 36,
                color: Colors.grey,
              ),
            ),
            Text('Twitter',
              style: KMTextStyle.notoSerif(size: 12),
            )
          ],
        ),
      ),
    );
  }

}

