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
        child: Container(
          margin: const EdgeInsets.all(64),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  // margin: const EdgeInsets.all(16),
                  margin: const EdgeInsets.only(bottom: 64),
                  child: Text(
                    'Works',
                    style: KMTextStyle.notoSerif(
                      size: 36,
                    ),
                  ),
                ),
                Container(
                  constraints: BoxConstraints(
                    maxWidth: _maxWidth(),
                  ),
                  child: GridView.count(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: isGreaterThanAreaValue() ? 3 : 2,
                    childAspectRatio: 1.0,
                    crossAxisSpacing: 32,
                    mainAxisSpacing: 32,
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
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 2,
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
                        size: isGreaterThanAreaValue() ? 16 : 10,
                        color: Colors.white,
                        isBold: true,
                      ),
                    ),
                    Text(description,
                      textAlign: TextAlign.center,
                      style: KMTextStyle.lato(
                        size: isGreaterThanAreaValue() ? 10 : 4,
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

  // 800.0 を域値とし画面の横幅が域値を超えているかを返す
  bool isGreaterThanAreaValue() {
    if (Screen.size?.width == null)
      return false;

    return 800.0 < Screen.size!.width;
  }

  double _maxWidth() {
    if (isGreaterThanAreaValue()) {
      return Screen.size!.width / 2;
    } else {
      return Screen.size!.width;
    }
  }
}
