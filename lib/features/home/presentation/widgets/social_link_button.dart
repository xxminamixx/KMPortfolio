import 'package:flutter/material.dart';
import 'package:km_portfolio/core/theme/app_text_style.dart';
import 'package:km_portfolio/core/utils/url_launcher_service.dart';

class SocialLinkButton extends StatelessWidget {
  const SocialLinkButton({super.key, required this.text, required this.url});

  final String text;
  final String url;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ClipOval(
          child: Container(
            color: Colors.grey[300],
            child: IconButton(
              iconSize: 28,
              icon: const Icon(
                Icons.link_rounded,
                color: Colors.white,
                size: 28,
              ),
              tooltip: text,
              onPressed: () => _open(context),
            ),
          ),
        ),
        Text(
          text,
          style: AppTextStyle.notoSerif(size: 12),
        ),
      ],
    );
  }

  Future<void> _open(BuildContext context) async {
    final bool succeeded = await URLLauncher.open(url);
    if (!succeeded && context.mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('$text を開けませんでした')),
      );
    }
  }
}
