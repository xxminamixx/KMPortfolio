import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:km_portfolio/Utility/Const.dart';
import 'package:km_portfolio/Utility/KMTextStyle.dart';

class ProfileWidget extends StatelessWidget {

  const ProfileWidget({Key? key}) : super(key: key);

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
                children: <Widget> [
                  Container(
                    margin: const EdgeInsets.only(bottom: 64),
                    child: Text('Profile',
                      style: KMTextStyle.notoSerif(size: 36),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    child: Container(
                      width: 100,
                      height: 100,
                      child: ClipOval(
                          child: CachedNetworkImage(
                            imageUrl: url.profileIcon,
                            placeholder: (BuildContext context, String url) => const CircularProgressIndicator(),
                            errorWidget: (BuildContext context, String url, dynamic error) {
                              print(error);
                              return const Icon(Icons.error);
                            },
                          ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        border: Border.all(
                          color: Colors.grey,
                        ),
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.only(bottom: 16),
                      child: Wrap(
                        direction: Axis.vertical,
                        spacing: 8,
                        children: <Widget> [
                          _pairedText(title: '名前', content: '南 京兵 (みなみ きょうへい)'),
                          _pairedText(title: '居住', content: '東京都 / 神奈川県'),
                          _pairedText(title: '趣味', content: 'ゲーム / アニメ / ごはん'),
                        ],
                      )
                  ),
                  Text(profileCareer,
                    style: KMTextStyle.lato(size: 14),
                  ),
                  Container(
                    margin: const  EdgeInsets.only(bottom: 16),
                    child: Text('---',
                      style: KMTextStyle.lato(size: 14),
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.only(bottom: 16),
                      child: Wrap(
                        direction: Axis.vertical,
                        spacing: 8,
                        children: <Widget> [
                          _pairedText(title: 'Name', content: 'Minami Kyohei'),
                          _pairedText(title: 'Residence', content: 'Tokyo / Kanagawa'),
                          _pairedText(title: 'hobby', content: 'Game / Anime / Eat delicious food'),
                        ],
                      )
                  ),
                  Text(profileCareerEn,
                    style: KMTextStyle.lato(size: 14),
                  ),
                ],
              ),
            ),
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
      children: <Widget> [
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