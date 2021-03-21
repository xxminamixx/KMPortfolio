import 'package:flutter/material.dart';
import 'package:km_portfolio/Utility/KMTextStyle.dart';
import 'package:km_portfolio/Utility/Screen.dart';
import 'package:km_portfolio/Utility/URLLauncher.dart';

class WorksWidget extends StatelessWidget {
  const WorksWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _mainWidget();
  }

  Widget _mainWidget() {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.all(16),
                child: Text(
                  'Works',
                  style: KMTextStyle.notoSerif(
                    size: 36,
                  ),
                ),
              ),
              Container(
                constraints: BoxConstraints(
                    maxWidth: (Screen.size?.width ?? 300) / 2),
                child: GridView.count(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 3,
                  childAspectRatio: 1.0,
                  children: <Widget>[
                    _cell(
                        title: '文字数カウンタ',
                        description: '文字数を数える機能を提供するWebサイト',
                        url: 'https://kmcharactercount.web.app/#/'),
                    _cell(
                        title: 'めがほん',
                        description: 'スプラトゥーン2 専用情報共有iOSアプリ',
                        url: 'https://apps.apple.com/be/app/id1268228235'),
                    _cell(
                        title: 'しょうゆ',
                        description: '短縮URLを生成できるiOSアプリ',
                        url: 'https://apps.apple.com/us/app/id1486190198'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _cell({
    required String title,
    required String description,
    required String url,
  }) {
    return GestureDetector(
      onTap: () => URLLauncher.open(url),
      child: Card(
        elevation: 4,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Center(
                child: Text('No Image',
                  style: KMTextStyle.chango(
                    size: 18,
                    color: Colors.black,
                    isBold: true,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.all(8),
                color: Colors.teal,
                alignment: Alignment.center,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget> [
                    Text(title,
                      textAlign: TextAlign.center,
                      style: KMTextStyle.lato(
                        size: 16,
                        color: Colors.white,
                        isBold: true,
                      ),
                    ),
                    Text(description,
                      textAlign: TextAlign.center,
                      style: KMTextStyle.lato(
                        size: 10,
                        color: Colors.white,
                        isBold: true,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
