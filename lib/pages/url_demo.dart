import 'package:demo_url_launcher/common/Constants/string_constants.dart';
import 'package:demo_url_launcher/common/widgets/button.dart';
import 'package:demo_url_launcher/utils/url_launcher_utils.dart';
import 'package:flutter/material.dart';

class UrlDemoScreen extends StatefulWidget {
  const UrlDemoScreen({
    super.key,
  });

  @override
  State<UrlDemoScreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<UrlDemoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text(kUrlLauncher),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ButtonWithIcon(
              icon: const Icon(Icons.call),
              function: () =>UrlLauncherUtils().makePhoneCall(),
              text: kCall,
            ),
            ButtonWithIcon(
              icon: const Icon(Icons.sms),
              function: () =>UrlLauncherUtils().sendSMS(),
              text: kSms,
            ),
            ButtonWithIcon(
              icon: const Icon(Icons.email),
              function: UrlLauncherUtils().sendEmail,
              text: kEmail,
            ),
          ],
        ),
      ),
    );
  }
}
