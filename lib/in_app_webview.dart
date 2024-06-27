library in_app_webview;

import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:in_app_webview/widgets/IconInkWell.dart';
import 'package:in_app_webview/widgets/IconWidget.dart';
import 'package:share_plus/share_plus.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'in_app_cookies.dart';

export 'package:in_app_webview/in_app_webview.dart';

/// Write comment and a great docs
/// change the name of package

// ignore: must_be_immutable
class InAppWebView extends StatefulWidget {
  /// [mUrl] which is loaded and displayed by web view and it will be show on the appbar
  /// and share by share button
  String mUrl;

  final Map<String, String>? headers;

  final List<InAppCookies>? initialCookies;

  /// To change the direction of web view
  final TextDirection mDirection;

  /// You can set your title widget by [titleWidget]
  final Widget closeIcon,
      titleWidget,

      /// Bottom Sheet Icons
      backIcon,
      nextIcon,
      shareIcon,
      refreshIcon;

  // Bottom Sheet parameters
  final Color bottomNavColor;
  final double btmSheetSize;
  final BorderRadiusGeometry borderRadiusGeometry;
  final BorderSide borderSide;

  // AppBar parameters
  final Color appBarBGColor, appBarFGColor;
  final bool defaultTitle, centerTitle, primary, excludeHeaderSemantics;
  final List<Widget> actionWidget;
  final Color shadowColor;
  final IconThemeData iconTheme, actionsIconTheme;

  final double titleSpacing, toolbarHeight, leadingWidth, elevationVal;
  final TextStyle toolbarTextStyle, titleTextStyle;

  // Web view parameters

  final Color webViewBGColor;
  final bool webViewDebugging,
      webViewAllowsInlineMediaPlayback,
      webViewGestureNavigationEnabled,
      webViewZoomEnabled;

  InAppWebView(
    this.mUrl, {
    Key? key,
    this.headers,
    this.initialCookies,
    this.mDirection = TextDirection.ltr,
    this.backIcon = const IconWidget(Icons.arrow_back_ios),
    this.nextIcon = const IconWidget(Icons.arrow_forward_ios),
    this.shareIcon = const IconWidget(Icons.share),
    this.refreshIcon = const IconWidget(Icons.refresh),
    this.closeIcon = const IconWidget(Icons.close),
    this.appBarBGColor = Colors.white,
    this.bottomNavColor = Colors.white,
    this.titleWidget = const Text("Default"),
    this.defaultTitle = false,
    this.actionWidget = const [],
    this.centerTitle = false,
    this.elevationVal = 0,
    this.appBarFGColor = Colors.blue,
    this.shadowColor = Colors.blue,
    this.iconTheme = const IconThemeData(),
    this.actionsIconTheme = const IconThemeData(),
    this.primary = true,
    this.excludeHeaderSemantics = false,
    this.titleSpacing = 0.0,
    this.toolbarHeight = 56.0,
    this.leadingWidth = 56.0,
    this.toolbarTextStyle = const TextStyle(),
    this.titleTextStyle = const TextStyle(),
    this.btmSheetSize = 56,
    this.borderRadiusGeometry = const BorderRadius.all(Radius.circular(0)),
    this.borderSide = const BorderSide(),
    this.webViewDebugging = false,
    this.webViewAllowsInlineMediaPlayback = false,
    this.webViewGestureNavigationEnabled = false,
    this.webViewZoomEnabled = true,
    this.webViewBGColor = Colors.transparent,
  }) : super(key: key);

  @override
  State<InAppWebView> createState() => _InAppWebViewState();
}

class _InAppWebViewState extends State<InAppWebView>
    with TickerProviderStateMixin {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();
  late final String _title = widget.mUrl;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: widget.mDirection,
      child: Scaffold(
        appBar: AppBar(
          actions: widget.actionWidget,
          centerTitle: widget.centerTitle,
          primary: widget.primary,
          excludeHeaderSemantics: widget.excludeHeaderSemantics,
          elevation: widget.elevationVal,
          backgroundColor: widget.appBarBGColor,
          foregroundColor: widget.appBarFGColor,
          shadowColor: widget.shadowColor,
          iconTheme: widget.iconTheme,
          actionsIconTheme: widget.actionsIconTheme,
          titleSpacing: widget.titleSpacing,
          toolbarHeight: widget.toolbarHeight,
          leadingWidth: widget.leadingWidth,
          toolbarTextStyle: widget.toolbarTextStyle,
          titleTextStyle: widget.titleTextStyle,
          title: widget.defaultTitle
              ? Text(
                  _title,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                  ),
                )
              : widget.titleWidget,
          leading: IconInkWell(
            func: () {
              Navigator.pop(context);
            },
            iconWidget: widget.closeIcon,
          ),
        ),
        body: WebView(
          onWebViewCreated: (WebViewController webViewController) async {
            if (widget.headers != null) {
              await webViewController.loadUrl(widget.mUrl,
                  headers: widget.headers);
            }
            _controller.complete(webViewController);
          },
          javascriptMode: JavascriptMode.unrestricted,
          initialCookies: (widget.initialCookies?.isEmpty ?? true)
              ? <WebViewCookie>[]
              : widget.initialCookies!
                  .map((e) => WebViewCookie(
                      name: e.name, value: e.value, domain: e.domain))
                  .toList(),
          initialUrl: widget.headers != null ? null : widget.mUrl,
          backgroundColor: widget.webViewBGColor,
          debuggingEnabled: widget.webViewDebugging,
          allowsInlineMediaPlayback: widget.webViewAllowsInlineMediaPlayback,
          gestureNavigationEnabled: widget.webViewGestureNavigationEnabled,
          zoomEnabled: widget.webViewZoomEnabled,
        ),

        /// Bottom sheet screen
        bottomNavigationBar: Material(
          child: Container(
            height: widget.btmSheetSize,
            color: widget.bottomNavColor,
            margin: EdgeInsets.zero,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                /// Go to previous link
                Expanded(
                  child: IconInkWell(
                    func: () async {
                      WebViewController webViewController =
                          await _controller.future;
                      webViewController.canGoBack().then((value) {
                        if (value) webViewController.goBack();
                      });
                    },
                    iconWidget: widget.backIcon,
                  ),
                ),

                /// Go to next link
                Expanded(
                  child: IconInkWell(
                    func: () async {
                      WebViewController webViewController =
                          await _controller.future;
                      webViewController.canGoForward().then((value) {
                        if (value) webViewController.goForward();
                      });
                    },
                    iconWidget: widget.nextIcon,
                  ),
                ),

                /// share the current link
                Expanded(
                  child: IconInkWell(
                    func: () async {
                      WebViewController webViewController =
                          await _controller.future;
                      String getCurrentUrl =
                          await webViewController.currentUrl() ?? widget.mUrl;

                      if (getCurrentUrl.isNotEmpty) {
                        Share.share(getCurrentUrl);
                      }
                    },
                    iconWidget: widget.shareIcon,
                  ),
                ),

                /// Refresh the current link
                Expanded(
                  child: IconInkWell(
                    iconWidget: widget.refreshIcon,
                    func: () async {
                      WebViewController webViewController =
                          await _controller.future;
                      webViewController.reload();
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
