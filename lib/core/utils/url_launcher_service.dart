import 'package:url_launcher/url_launcher.dart';

class URLLauncher {

  static Future<void> open(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw Exception('Could not Launch $url');
    }
  }

}