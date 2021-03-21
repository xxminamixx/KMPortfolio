import 'package:flutter/material.dart';
import 'package:km_portfolio/Utility/Const.dart';
import 'package:km_portfolio/Utility/KMTextStyle.dart';

class ProfileWidget extends StatelessWidget {
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 64),
                    child: Text('Profile',
                      style: KMTextStyle.notoSerif(size: 36),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 16),
                    child: Container(
                      width: 100,
                      height: 100,
                      child: ClipOval(
                        child: Image.asset('assets/images/icon.png')
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 0,
                            blurRadius: 4,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 16),
                    child: Wrap(
                      direction: Axis.vertical,
                      spacing: 8,
                      children: [
                        _pairedText(title: '名前', content: '南 京兵 (みなみ きょうへい)'),
                        _pairedText(title: '居住', content: '東京都 / 神奈川県'),
                        _pairedText(title: '趣味', content: 'ゲーム / アニメ / 美味しいものを食べる'),
                      ],
                    )
                  ),
                  Container(
                    child: Text(Const.profileCareer,
                      style: KMTextStyle.lato(size: 14),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 16),
                    child: Text('---',
                      style: KMTextStyle.lato(size: 14),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(bottom: 16),
                      child: Wrap(
                        direction: Axis.vertical,
                        spacing: 8,
                        children: [
                          _pairedText(title: 'Name', content: 'Minami Kyohei'),
                          _pairedText(title: 'Residence', content: 'Tokyo / Kanagawa'),
                          _pairedText(title: 'hobby', content: 'Game / Anime / Eat delicious food'),
                        ],
                      )
                  ),
                  Container(
                    child: Text(Const.profileCareerEn,
                      style: KMTextStyle.lato(size: 14),
                    ),
                  )
                ],
              ),
            ),
          )
        ),
      ),
    );
  }

  Widget _pairedText({
    @required String? title,
    @required String? content,
  }) {
    return Wrap(
      direction: Axis.horizontal,
      spacing: 16,
      children: [
        Text(title ?? '',
          style: KMTextStyle.lato(size: 14, isBold: true),
        ),
        Text(content ?? '',
          style: KMTextStyle.lato(size: 14),
        ),
      ],
    );
  }
}