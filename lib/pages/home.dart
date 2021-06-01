import 'package:euro_exchange_api_website/util/localizations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _linkTapRecognizer = TapGestureRecognizer();

  @override
  Widget build(BuildContext context) {
    MyAppLocalizations localizations = MyAppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        title: Text("Euro Exchange Api"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
                title: Text(localizations.homeMenuLogin),
                onTap: () {
                  Get.toNamed("/login");
                }),
            ListTile(
              title: Text(localizations.homeMenuApiKey),
              onTap: () {
                Get.toNamed("/manage_api_keys");
              },
            ),
            ListTile(
                title: Text(localizations.homeMenuAbout),
                onTap: () {
                  Get.toNamed("/about");
                }),
          ],
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Image(image: AssetImage('img/exchange.png')),
                constraints: BoxConstraints.loose(Size(200, 200)),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: localizations.apiPresentation,
                      style: TextStyle(fontSize: 24),
                    ),
                    TextSpan(
                        text:
                            " https://www.ecb.europa.eu/home/html/index.en.html",
                        style: TextStyle(color: Colors.blue, fontSize: 24),
                        recognizer: _linkTapRecognizer
                          ..onTap = () {
                            launch(
                                "https://www.ecb.europa.eu/home/html/index.en.html");
                          })
                  ]),
                ),
                constraints: BoxConstraints(maxWidth: 1000),
              ),
            ],
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    _linkTapRecognizer.dispose();
    super.dispose();
  }
}
