import 'package:url_launcher/url_launcher.dart';

class UrlLauncherUtils {

  void makePhoneCall() async {
    const phoneNumber = 'tel:1234567890';
    if (await canLaunch(phoneNumber)) {
      await launch(phoneNumber);
    } else {
      throw 'Could not launch $phoneNumber';
    }
  }

  void sendSMS() async {
    const smsNumber = 'sms:1234567890';
    if (await canLaunch(smsNumber)) {
      await launch(smsNumber);
    } else {
      throw 'Could not launch $smsNumber';
    }
  }

  void sendEmail() async {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'recipient@example.com', // Enter your recipient email address here
      queryParameters: {
        'subject': 'Hello', // Enter your email subject here
        'body': 'Hello Flutter!' // Enter your email body here
      },
    );
    final url = emailLaunchUri.toString();
    if (await canLaunchUrl(emailLaunchUri)) {
      await launchUrl(emailLaunchUri);
    } else {
      throw 'Could not launch $url';
    }
  }


}