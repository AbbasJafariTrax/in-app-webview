import 'package:flutter/material.dart';
import 'package:in_app_webview/in_app_cookies.dart';
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
         "https://stcp.fighttech.vn/api/cheader",
        headers: const {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer eyJhbGciOiJSUzI1NiIsImtpZCI6ImYwOGU2ZTNmNzg4ZDYwMTk0MDA1ZGJiYzE5NDc0YmY5Mjg5ZDM5ZWEiLCJ0eXAiOiJKV1QifQ.eyJuYW1lIjoiVHJ1bmcgSGnhur91IFRy4bqnbiIsInBpY3R1cmUiOiJodHRwczovL2xoMy5nb29nbGV1c2VyY29udGVudC5jb20vYS9BRWRGVHA3SXlFcllVRVcwZ0Fua3Nhd1RIYXdpVE9kWWFuYnB0SmgtcjQ4czNubz1zOTYtYyIsImlzcyI6Imh0dHBzOi8vc2VjdXJldG9rZW4uZ29vZ2xlLmNvbS9kZXYtdGVzdGluZy1wcm9qZWN0LTM1MTIwMCIsImF1ZCI6ImRldi10ZXN0aW5nLXByb2plY3QtMzUxMjAwIiwiYXV0aF90aW1lIjoxNzE5MTY0MjQ4LCJ1c2VyX2lkIjoiQzZscVIwSzBNWmJ5QnpoaVpRd1Fod1lCakM5MyIsInN1YiI6IkM2bHFSMEswTVpieUJ6aGlaUXdRaHdZQmpDOTMiLCJpYXQiOjE3MTkzMzEzMTksImV4cCI6MTcxOTMzNDkxOSwiZW1haWwiOiJoaWV1LnRyYW50cnVuZzEyMDRAZ21haWwuY29tIiwiZW1haWxfdmVyaWZpZWQiOnRydWUsImZpcmViYXNlIjp7ImlkZW50aXRpZXMiOnsiZ29vZ2xlLmNvbSI6WyIxMDQwMzYxMzI4OTUzMzk2NTQzOTAiXSwiZW1haWwiOlsiaGlldS50cmFudHJ1bmcxMjA0QGdtYWlsLmNvbSJdfSwic2lnbl9pbl9wcm92aWRlciI6Imdvb2dsZS5jb20ifX0.aQY-xCHPXoIQ59QbE7xzUFQo-8MSidxPgfQ4zG79ULsznIWm5anXsj4pB58qRfOEHzM1OHuK_tYLewlBZaB03qhG5clKR-9JfsSwdK6l-CKe_-5hAzhyQJ-8z-NhW8En1QOdLouTlm0SrZjuk3t5wlV7dMx6vph13jWvCJMhzixvV748iBgSf9fN940CjspQJziImOASD9Y-D-BZ-wbLmQX_SEB6Y_eY_-SjqEDJ6Eu2OOiAwIEYr-oaWxIljLQ9YjDlVg1nHouSh5z59eW0GJQA_BPE6kpUckxplNsLBK6x2Z0q0enW4t_rmennceRTcHVX88m8j_g5DcyZycXeag',
        },
        initialCookies: [
          InAppCookies('Authorization', 'Bearer eyJhbGciOiJSUzI1NiIsImtpZCI6ImYwOGU2ZTNmNzg4ZDYwMTk0MDA1ZGJiYzE5NDc0YmY5Mjg5ZDM5ZWEiLCJ0eXAiOiJKV1QifQ.eyJuYW1lIjoiVHJ1bmcgSGnhur91IFRy4bqnbiIsInBpY3R1cmUiOiJodHRwczovL2xoMy5nb29nbGV1c2VyY29udGVudC5jb20vYS9BRWRGVHA3SXlFcllVRVcwZ0Fua3Nhd1RIYXdpVE9kWWFuYnB0SmgtcjQ4czNubz1zOTYtYyIsImlzcyI6Imh0dHBzOi8vc2VjdXJldG9rZW4uZ29vZ2xlLmNvbS9kZXYtdGVzdGluZy1wcm9qZWN0LTM1MTIwMCIsImF1ZCI6ImRldi10ZXN0aW5nLXByb2plY3QtMzUxMjAwIiwiYXV0aF90aW1lIjoxNzE5MTY0MjQ4LCJ1c2VyX2lkIjoiQzZscVIwSzBNWmJ5QnpoaVpRd1Fod1lCakM5MyIsInN1YiI6IkM2bHFSMEswTVpieUJ6aGlaUXdRaHdZQmpDOTMiLCJpYXQiOjE3MTkzMzEzMTksImV4cCI6MTcxOTMzNDkxOSwiZW1haWwiOiJoaWV1LnRyYW50cnVuZzEyMDRAZ21haWwuY29tIiwiZW1haWxfdmVyaWZpZWQiOnRydWUsImZpcmViYXNlIjp7ImlkZW50aXRpZXMiOnsiZ29vZ2xlLmNvbSI6WyIxMDQwMzYxMzI4OTUzMzk2NTQzOTAiXSwiZW1haWwiOlsiaGlldS50cmFudHJ1bmcxMjA0QGdtYWlsLmNvbSJdfSwic2lnbl9pbl9wcm92aWRlciI6Imdvb2dsZS5jb20ifX0.aQY-xCHPXoIQ59QbE7xzUFQo-8MSidxPgfQ4zG79ULsznIWm5anXsj4pB58qRfOEHzM1OHuK_tYLewlBZaB03qhG5clKR-9JfsSwdK6l-CKe_-5hAzhyQJ-8z-NhW8En1QOdLouTlm0SrZjuk3t5wlV7dMx6vph13jWvCJMhzixvV748iBgSf9fN940CjspQJziImOASD9Y-D-BZ-wbLmQX_SEB6Y_eY_-SjqEDJ6Eu2OOiAwIEYr-oaWxIljLQ9YjDlVg1nHouSh5z59eW0GJQA_BPE6kpUckxplNsLBK6x2Z0q0enW4t_rmennceRTcHVX88m8j_g5DcyZycXeag', 'https://stcp.fighttech.vn/api/cheader'),
        ],
        mDirection: TextDirection.ltr,
        appBarBGColor: const Color.fromARGB(255, 65, 60, 60),
        bottomNavColor: const Color(0xFF262626),
        defaultTitle: false,
        titleWidget: const Text('Title'),
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
