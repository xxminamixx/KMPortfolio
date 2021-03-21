import 'package:url_launcher/url_launcher.dart';

class URLLauncher {

  static Future<void> open(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw Exception('Could not Launch $url');
    }
  }

}