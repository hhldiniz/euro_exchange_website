import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MyAppLocalizations {
  MyAppLocalizations(this.locale);

  final Locale locale;

  static MyAppLocalizations? of(BuildContext context) {
    return Localizations.of<MyAppLocalizations>(context, MyAppLocalizations);
  }

  Map<String, Map<String, String>> _localizedValues = {
    "en": {
      "apiPresentation":
          'Euro Exchange is an Api that helps you to get information about the '
              'current value of different currencies around the world! '
              'Those values are obtained from the European Central Bank. '
              'Se more at the link',
      "homeMenuLogin": "Login",
      "homeMenuApiKey": "Manage Api Keys",
      "homeMenuAbout": "About",
      "username": "Username",
      "password": "Password",
      "passwordConfirmation": "Password confirmation",
      "formFieldRequired": "You need to provide this value",
      "createAccount": "Don't have an account ? Create one here.",
      "signupFinishBtn": "Signup"
    },
    "pt": {
      "apiPresentation": 'Euro Exchange é uma Api que ajuda você a conseguir '
          'informações à respeito de valores de diferentes moedas ao redor do mundo! \n'
          'Esses valores são obtidos do Banco Central Europeu (European Central Bank). \n'
          'Veja mais no link',
      "homeMenuLogin": "Entrar",
      "homeMenuApiKey": "Gerenciar Chaves de Api",
      "homeMenuAbout": "Sobre",
      "username": "Usuário",
      "password": "Senha",
      "passwordConfirmation": "Confirmação de senha",
      "formFieldRequired": "Você precisa inserir esse valor",
      "createAccount": "Não tem uma conta ? Crie uma aqui.",
      "signupFinishBtn": "Cadastrar"
    }
  };

// GETTERS
  String get apiPresentation =>
      _localizedValues[locale.languageCode]?['apiPresentation'] ??
      "Value Error";

  String get homeMenuLogin =>
      _localizedValues[locale.languageCode]?['homeMenuLogin'] ?? "Value Error";

  String get homeMenuAbout =>
      _localizedValues[locale.languageCode]?['homeMenuAbout'] ?? "Value Error";

  String get username =>
      _localizedValues[locale.languageCode]?['username'] ?? "Value Error";

  String get password =>
      _localizedValues[locale.languageCode]?['password'] ?? "Value Error";

  String get passwordConfirmation =>
      _localizedValues[locale.languageCode]?['passwordConfirmation'] ??
      'Value Error';

  String get formFieldRequired =>
      _localizedValues[locale.languageCode]?['formFieldRequired'] ??
      "Value Error";

  String get createAccount =>
      _localizedValues[locale.languageCode]?['createAccount'] ?? "Value Error";

  String get signupFinishBtn =>
      _localizedValues[locale.languageCode]?['signupFinishBtn'] ??
      'Value Error';

  String get homeMenuApiKey =>
      _localizedValues[locale.languageCode]?['homeMenuApiKey'] ?? 'Value Error';
}

class MyAppLocalizationsDelegate
    extends LocalizationsDelegate<MyAppLocalizations> {
  @override
  bool isSupported(Locale locale) => ["en", "pt"].contains(locale.languageCode);

  @override
  Future<MyAppLocalizations> load(Locale locale) {
    return SynchronousFuture<MyAppLocalizations>(MyAppLocalizations(locale));
  }

  @override
  bool shouldReload(LocalizationsDelegate<MyAppLocalizations> old) =>
      old != this;
}
