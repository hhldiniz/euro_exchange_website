import 'package:euro_exchange_api_website/controllers/login_form.dart';
import 'package:euro_exchange_api_website/pages/home.dart';
import 'package:euro_exchange_api_website/util/dependency_injector.dart';
import 'package:euro_exchange_api_website/util/localizations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';

void main() {
  DependencyInjector.injectDependency(
      [FormController()]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        MyAppLocalizationsDelegate(),
      ],
      supportedLocales: [const Locale("en"), const Locale("pt")],
      title: 'Euro Exchange Api',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}
