import 'package:flutter/material.dart';
import 'package:flutter_secure_screen/flutter_secure_screen.dart';
import 'package:flutter_windowmanager/flutter_windowmanager.dart';

class SecureScreenWrapper extends StatefulWidget {
  final Widget child;

  const SecureScreenWrapper({Key? key, required this.child}) : super(key: key);

  @override
  _SecureScreenWrapperState createState() => _SecureScreenWrapperState();
}

class _SecureScreenWrapperState extends State<SecureScreenWrapper> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      // FlutterSecureScreen.keepOn(true); // Prevent screen recording
      FlutterWindowManager.addFlags(FlutterWindowManager.FLAG_SECURE);

    });
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
