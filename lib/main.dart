import 'package:euro_exchange_api_website/pages/home.dart';
import 'package:euro_exchange_api_website/pages/login.dart';
import 'package:euro_exchange_api_website/pages/signup.dart';
import 'package:euro_exchange_api_website/util/bindings/home_bindings.dart';
import 'package:euro_exchange_api_website/util/bindings/login_bindings.dart';
import 'package:euro_exchange_api_website/util/bindings/signup_bindings.dart';
import 'package:euro_exchange_api_website/util/localizations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';

void main() {
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
      initialRoute: "/",
      initialBinding: HomeBindings(),
      getPages: [
        GetPage(name: "/", page: () => Home()),
        GetPage(name: "/login", page: () => Login(), binding: LoginBindings()),
        GetPage(
            name: "/signup", page: () => Signup(), binding: SignupBindings())
      ],
    );
  }
}
