import 'package:demo_url_launcher/pages/url_demo.dart';
import 'package:flutter/material.dart';

import 'common/Constants/color_constants.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Url Launcher Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: kPrimaryColor),
        useMaterial3: true,
      ),
      home: const UrlDemoScreen(),
    );
  }
}


