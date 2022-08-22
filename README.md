# in_app_webview

Simple in-app web view for your application.

<img src="https://raw.githubusercontent.com/AbbasJafariTrax/in-app-webview/e22088c4cc0881f073c5f47589cbefe7f6414516/assets/images/browse_in.jpg" height=512px width=236px>

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

### InAppWebView parameters

`mUrl` param which is loaded and displayed by web view and it will be shown on the appbar and shared by
share button.

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