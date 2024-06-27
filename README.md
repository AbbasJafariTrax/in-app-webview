# in_app_webview

Simple in-app web view for your application.

<img src="https://raw.githubusercontent.com/AbbasJafariTrax/in-app-webview/e22088c4cc0881f073c5f47589cbefe7f6414516/assets/images/browse_in.jpg" height=512px width=236px>

## Features:

- Launching a URL
- Go to the previous link
- Go to the next link
- Share the current link
- Refresh the current link

## Getting Started

### Usage

```
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
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
```

Quickly to call open screen
```
ElevatedButton(
  onPressed: () {
    const token =
        'eyJhbGcI6ImYwOGU2ZTNmNzg4ZDYwMTk0MDA1ZGJiYzE5NDc0YmY5Mjg5ZDM5ZWEiLCJ0eXAiOiJKV1QifQ.eyJuYW1lIjoiVHJ1bmcgSGnhur91IFRy4bqnbiIsInBpY3R1cmUiOiJodHRwczovL2xoMy5nb29nbGV1c2VyY29udGVudC5jb20vYS9BRWRGVHA3SXlFcllVRVcwZ0Fua3Nhd1RIYXdpVE9kWWFuYnB0SmgtcjQ4czNubz1zOTYtYyIsImlzcyI6Imh0dHBzOi8vc2VjdXJldG9rZW4uZ29vZ2xlLmNvbS9kZXYtdGVzdGluZy1wcm9qZWN0LTM1MTIwMCIsImF1ZCI6ImRldi10ZXN0aW5nLXByb2plY3QtMzUxMjAwIiwiYXV0aF90aW1lIjoxNzE5MTY0MjQ4LCJ1c2VyX2lkIjoiQzZscVIwSzBNWmJ5QnpoaVpRd1Fod1lCakM5MyIsInN1YiI6IkM2bHFSMEswTVpieUJ6aGlaUXdRaHdZQmpDOTMiLCJpYXQiOjE3MTkzMzEzMTksImV4cCI6MTcxOTMzNDkxOSwiZW1haWwiOiJoaWV1LnRyYW50cnVuZzEyMDRAZ21haWwuY29tIiwiZW1haWxfdmVyaWZpZWQiOnRydWUsImZpcmViYXNlIjp7ImlkZW50aXRpZXMiOnsiZ29vZ2xlLmNvbSI6WyIxMDQwMzYxMzI4OTUzMzk2NTQzOTAiXSwiZW1haWwiOlsiaGlldS50cmFudHJ1bmcxMjA0QGdtYWlsLmNvbSJdfSwic2lnbl9pbl9wcm92aWRlciI6Imdvb2dsZS5jb20ifX0.aQY-xCHPXoIQ59QbE7xzUFQo-8MSidxPgfQ4zG79ULsznIWm5anXsj4pB58qRfOEHzM1OHuK_tYLewlBZaB03qhG5clKR-9JfsSwdK6l-CKe_-5hAzhyQJ-8z-NhW8En1QOdLouTlm0SrZjuk3t5wlV7dMx6vph13jWvCJMhzixvV748iBgSf9fN940CjspQJziImOASD9Y-D-BZ-wbLmQX_SEB6Y_eY_-SjqEDJ6Eu2OOiAwIEYr-oaWxIljLQ9YjDlVg1nHouSh5z59eW0GJQA_BPE6kpUckxplNsLBK6x2Z0q0enW4t_rmennceRTcHVX88m8j_g5DcyZycXeag';
    context.startInAppWebview(
      'https://google.com',
      headers: {
        'Authorization': 'Bearer $token',
      },
    );
  },
  child: const Text('InApp Webview'),
),
```

### InAppWebView parameters

`mUrl` param which is loaded and displayed by web view and it will be shown on the appbar and shared
by share button.

```this.mUrl```
```Key key```

To change the direction of the web view

```this.mDirection = TextDirection.ltr```

Bottom Sheet Icons

```
this.backIcon
this.nextIcon
this.shareIcon
this.refreshIcon
```

Bottom Sheet Size

```this.btmSheetSize = 56```

Bottom Sheet Shape

```this.btmSheetShape```

AppBar Parameters

```
this.closeIcon
this.appBarBGColor = Colors.white
this.bottomNavColor = Colors.white
```

If ```widget.titleWidget == null``` and ```showAppTitle == true``` then the current URL will show on
the appbar

```
this.showAppTitle = false
```

```
this.actionWidget
this.centerTitle = false
this.elevationVal = 0
this.appBarFGColor
this.shadowColor
this.iconTheme
this.actionsIconTheme
this.primary = true
this.excludeHeaderSemantics = false
this.titleSpacing
this.toolbarHeight
this.leadingWidth
this.toolbarTextStyle
this.titleTextStyle
```

```
this.closeIcon
this.appBarBGColor = Colors.white
this.bottomNavColor = Colors.white
```

Web view parameters

```
this.webViewDebugging = false
this.webViewAllowsInlineMediaPlayback = false
this.webViewGestureNavigationEnabled = false
this.webViewZoomEnabled = true
this.webViewBGColor = Colors.transparent
```

### Meta

Abbas Jafari - [@Abbas Jafari](https://www.linkedin.com/in/abbas-jafari-1355531b5/)

Git repository of this package
[git_repository](https://github.com/AbbasJafariTrax/in-app-webview/)

### Contributing

1. Fork it (https://github.com/AbbasJafariTrax/in-app-webview/fork)
2. Create your feature branch (git checkout -b feature/fooBar)
3. Commit your changes (git commit -am 'Add some fooBar')
4. Push to the branch (git push origin feature/fooBar)
5. Create a new Pull Request

