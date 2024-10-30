
 import 'package:url_launcher/url_launcher.dart';

Future<void> launchurl(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $uri');
    }
  }



