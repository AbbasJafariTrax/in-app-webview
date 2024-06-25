import 'package:flutter/material.dart';
import 'package:in_app_webview/in_app_webview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InAppWebView(
        "https://www.google.com/",
        headers: const {
          'Authorization': 'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjMyLCJpc3MiOiJodHRwczovL3dpa2lhbGxlcmdpZXMubmV0L2FwaS92MS9zaWduLWluIiwiaWF0IjoxNjczNzYzNDg2LCJleHAiOjE2NzM3NzA2ODYsIm5iZiI6MTY3Mzc2MzQ4NiwianRpIjoiMUxCMk0xaG5BU3AzS2R6bCJ9.UN7j_OUeahkYZA65OWL7gT2sJQ0V4h3t7bxILc--Ob8',
        },
        mDirection: TextDirection.ltr,
        appBarBGColor: const Color(0xFF262626),
        bottomNavColor: const Color(0xFF262626),
        defaultTitle: true,
        backIcon: const Icon(Icons.arrow_back_ios, color: Colors.white),
        nextIcon: const Icon(Icons.arrow_forward_ios, color: Colors.white),
        closeIcon: const Icon(Icons.close, color: Colors.white),
        shareIcon: const Icon(Icons.share, color: Colors.white),
        refreshIcon: const Icon(Icons.refresh, color: Colors.white),
        actionWidget: const [],
        actionsIconTheme: const IconThemeData(),
        centerTitle: true,
        titleTextStyle: const TextStyle(),
        toolbarTextStyle: const TextStyle(),
        toolbarHeight: 56,
      ),
    );
  }
}
