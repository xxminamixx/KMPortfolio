import 'package:url_launcher/url_launcher.dart';

class URLLauncher {
  /// Returns whether [url] was successfully launched.
  ///
  /// Never throws: a launch failure (unsupported URL, no handling app,
  /// platform exception) is reported as `false` instead.
  static Future<bool> open(String url) async {
    final Uri uri = Uri.parse(url);
    try {
      return await launchUrl(uri);
    } catch (_) {
      return false;
    }
  }
}
