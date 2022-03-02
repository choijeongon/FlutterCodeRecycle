import 'package:url_launcher/url_launcher.dart';

void _launchURL(String url) async {
  if (await canLaunch(url)) {
    launch(url);
  }
}
