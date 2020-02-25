import 'package:browser_with_scanner/webpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:barcode_scan/barcode_scan.dart';

String loadUrl = "https://www.google.com";

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "browser",
    home: HomeApp(),
  ));
}

// ignore: must_be_immutable
class HomeApp extends StatelessWidget {
  TextEditingController textEditingController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    void turnPage() {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return WebScreen();
      }));
    }

    Future scanQr() async {
      String barcodeScanRes = await BarcodeScanner.scan();
      loadUrl = barcodeScanRes;
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent,
          actions: <Widget>[
            Container(
              child: TextFormField(
                controller: textEditingController,
              ),
            ),
            Container(
              child: RaisedButton(
                color: Colors.deepPurpleAccent,
                child: Text(
                  "Search",
                  style: TextStyle(fontSize: 19.0),
                ),
                onPressed: () {
                  debugPrint("search button is pressed");
                  turnPage();
                  loadUrl = (textEditingController) as String;
                },
              ),
            )
          ],
        ),
        floatingActionButton: Container(
          height: 60.0,
          width: 60.0,
          child: FloatingActionButton(
            child: Image(
              height: 50.0,
              width: 50.0,
              image: AssetImage("images/qr.png"),
            ),
            onPressed: () {
              debugPrint("Scanner is tapped");
              turnPage();
              scanQr();
            },
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: Column(
          children: <Widget>[
            Container(
              height: 340.0,
              child: WebviewScaffold(
                url: "https://www.google.com",
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(
                    top: 0.0, bottom: 0.0, left: 10.0, right: 10.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(5.0),
                        child: GestureDetector(
                          onTap: () {
                            debugPrint("youtube is pressed");
                            loadUrl = "https://www.youtube.com";
                            turnPage();
                          },
                          child: Image(
                            height: 80.0,
                            width: 80.0,
                            image: AssetImage("images/youtube.png"),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(5.0),
                        child: GestureDetector(
                          onTap: () {
                            debugPrint("whatsapp is pressed");
                            loadUrl = "https://web.whatsapp.com";
                            turnPage();
                          },
                          child: Image(
                            height: 80.0,
                            width: 80.0,
                            image: AssetImage("images/whatsapp.png"),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(5.0),
                        child: GestureDetector(
                          onTap: () {
                            debugPrint("facebook is pressed");
                            loadUrl = "https://www.facebook.com";
                            turnPage();
                          },
                          child: Image(
                            height: 80.0,
                            width: 80.0,
                            image: AssetImage("images/fb.png"),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(5.0),
                        child: GestureDetector(
                          onTap: () {
                            debugPrint("twitter is pressed");
                            loadUrl = "https://twitter.com/?lang=en";
                            turnPage();
                          },
                          child: Image(
                            height: 80.0,
                            width: 80.0,
                            image: AssetImage("images/twitter.png"),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(
                    top: 0.0, bottom: 50.0, right: 10.0, left: 10.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        height: 80.0,
                        width: 80.0,
                        padding: EdgeInsets.all(5.0),
                        child: GestureDetector(
                          onTap: () {
                            debugPrint("instagram is pressed");
                            loadUrl = "https://www.instagram.com";
                            turnPage();
                          },
                          child: Image(
                            height: 80.0,
                            width: 80.0,
                            image: AssetImage("images/insta.png"),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 80.0,
                        width: 80.0,
                        padding: EdgeInsets.all(5.0),
                        child: GestureDetector(
                          onTap: () {
                            debugPrint("apk is pressed");
                            loadUrl = "https://apkpure.com";
                            turnPage();
                          },
                          child: Image(
                            height: 80.0,
                            width: 80.0,
                            image: AssetImage("images/apk.png"),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(5.0),
                        child: GestureDetector(
                          onTap: () {
                            debugPrint("amazon is pressed");
                            loadUrl = "https://www.amazon.in";
                            turnPage();
                          },
                          child: Image(
                            height: 80.0,
                            width: 80.0,
                            image: AssetImage("images/amazon.jpg"),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 80.0,
                        width: 80.0,
                        padding: EdgeInsets.all(5.0),
                        child: GestureDetector(
                          onTap: () {
                            debugPrint("jokes is pressed");
                            loadUrl =
                                "https://www.livehindustan.com/jokes/news";
                            turnPage();
                          },
                          child: Image(
                            height: 80.0,
                            width: 80.0,
                            image: AssetImage("images/jokes.png"),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
