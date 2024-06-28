import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'dart:io' as io;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Platform Demo',
      home: Scaffold(
        appBar: AppBar(title: Text('Platform Borisenko')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Текущая платформа:'),
              SizedBox(height: 20),
              Text(
                _getPlatform(),
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  String _getPlatform() {
    if (kIsWeb) return 'Microsoft Edge(Web)';
    if (io.Platform.isAndroid) return 'Android';
    if (io.Platform.isWindows) return 'Windows';
    if (io.Platform.isIOS) return 'IOS';
    return 'Unknown Platform';
  }
}