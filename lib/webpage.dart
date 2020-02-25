import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'main.dart';
import 'package:barcode_scan/barcode_scan.dart';

class WebScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WebviewScaffold(
        url: loadUrl,
        appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent,
          leading: IconButton(
            onPressed: () {
              debugPrint("back button is pressed");
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return HomeApp();
              }));
            },
            icon: Icon(
              Icons.arrow_back,
            ),
          ),
          title: Text("BROWSER"),
        ),
      ),
    );
  }
}
