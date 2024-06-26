import 'package:flutter/material.dart';
import 'package:in_app_webview/in_app_cookies.dart';
import 'package:in_app_webview/in_app_webview.dart';

extension InAppWebviewCoodinator on BuildContext {
  Future<T?> startInAppWebview<T>(
    String url, {
    String? title,
    Map<String, String>? headers,
    List<InAppCookies>? initialCookies,
  }) async {
    return Navigator.of(this).push(MaterialPageRoute(
      builder: (context) => InAppWebView(
        url,
        headers: headers,
        initialCookies: initialCookies,
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
    ));
  }
}
