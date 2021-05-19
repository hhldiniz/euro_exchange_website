import 'dart:ui';

import 'package:euro_exchange_api_website/util/localizations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    MyAppLocalizations localizations = MyAppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        title: Text("Euro Exchange Api"),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Wrap(
                  children: [
                    Text(localizations.apiPresentation, style: TextStyle(fontSize: 24),),
                    Text("https://www.ecb.europa.eu/home/html/index.en.html", style: TextStyle(fontSize: 24), textAlign: TextAlign.center,)
                  ],
                ),
                constraints: BoxConstraints(maxWidth: 1000),
              ),
            ],
          )
        ],
      ),
    );
  }
}
