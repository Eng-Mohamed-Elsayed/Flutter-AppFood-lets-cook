import 'package:flutter/material.dart';

import 'package:webview_flutter/webview_flutter.dart';
import 'dart:io' show Platform;

class AppWebView extends StatefulWidget {
  final String url;

  AppWebView({required this.url});

  @override
  _AppWebViewState createState() => _AppWebViewState();
}

class _AppWebViewState extends State<AppWebView> {
  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebView(
        initialUrl: widget.url,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
