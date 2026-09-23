import 'package:flutter/material.dart';
import 'package:km_portfolio/core/constants/assets.dart';
import 'package:km_portfolio/core/theme/app_text_style.dart';
import 'package:km_portfolio/features/profile/data/profile_content.dart';
import 'package:km_portfolio/features/profile/domain/profile.dart';

class ProfileScreen extends StatelessWidget {

  const ProfileScreen({super.key});

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
                      style: AppTextStyle.notoSerif(size: 36),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        border: Border.all(
                          color: Colors.grey,
                        ),
                        color: Colors.grey,
                      ),
                      child: ClipOval(
                          child: Image.asset(
                            asset.profileIcon,
                            fit: BoxFit.cover,
                          ),
                      ),
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.only(bottom: 16),
                      child: Wrap(
                        direction: Axis.vertical,
                        spacing: 8,
                        children: profileContent.japaneseFields
                            .map(_pairedText)
                            .toList(),
                      )
                  ),
                  Text(profileContent.japaneseCareer,
                    style: AppTextStyle.lato(size: 14),
                  ),
                  Container(
                    margin: const  EdgeInsets.only(bottom: 16),
                    child: Text('---',
                      style: AppTextStyle.lato(size: 14),
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.only(bottom: 16),
                      child: Wrap(
                        direction: Axis.vertical,
                        spacing: 8,
                        children: profileContent.englishFields
                            .map(_pairedText)
                            .toList(),
                      )
                  ),
                  Text(profileContent.englishCareer,
                    style: AppTextStyle.lato(size: 14),
                  ),
                ],
              ),
            ),
          ),
      ),
    );
  }

  Widget _pairedText(ProfileField field) {
    return Wrap(
      direction: Axis.horizontal,
      spacing: 16,
      children: <Widget> [
        Text(field.title,
          style: AppTextStyle.lato(size: 14, isBold: true),
        ),
        Text(field.content,
          style: AppTextStyle.lato(size: 14),
        ),
      ],
    );
  }
}
