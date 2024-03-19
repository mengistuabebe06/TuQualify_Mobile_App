import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'secure_screen_wrapper.dart'; // Import the SecureScreenWrapper widget

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(SecureScreenWrapper(
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TuQualify',
      debugShowCheckedModeBanner: false,
      home:  MyWebView(),
    );
  }
}

class MyWebView extends StatefulWidget {
  @override
  _MyWebViewState createState() => _MyWebViewState();
}

class _MyWebViewState extends State<MyWebView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TuQualify'),
      ),

      body: WebView(
        initialUrl: 'https://tuqualify.com/', // Replace with your website URL
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}