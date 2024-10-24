import 'package:url_launcher/url_launcher.dart';

class LaunchUrlConst {
  static void launchURLConst(String url) async {
    await launchUrl(
      Uri.parse(
        url,
      ),
    );
  }
}
