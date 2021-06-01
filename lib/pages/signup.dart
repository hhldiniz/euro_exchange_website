import 'package:euro_exchange_api_website/controllers/signup_form.dart';
import 'package:euro_exchange_api_website/util/dependency_injector.dart';
import 'package:euro_exchange_api_website/util/localizations.dart';
import 'package:euro_exchange_api_website/widgets/material_text_form_field.dart';
import 'package:euro_exchange_api_website/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MyAppLocalizations _localizations = MyAppLocalizations.of(context)!;
    SignupFormController _signupFormController =
        DependencyInjector.getDependencyByTag(SignupFormController.Tag);
    GlobalKey<FormState> _formKey = GlobalKey<FormState>();

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Form(
              key: _formKey,
              child: Center(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: MaterialTextFormField(
                              initialValue: "",
                              labelText: _localizations.username,
                            )),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: MaterialTextFormField(
                              initialValue: "",
                              labelText: _localizations.password,
                            )),
                        Expanded(
                            flex: 1,
                            child: MaterialTextFormField(
                              initialValue: "",
                              labelText: _localizations.passwordConfirmation,
                            ))
                      ],
                    ),
                    Row(
                      children: [
                        PrimaryButton(_localizations.signupFinishBtn, () {
                          if (_formKey.currentState?.validate() == true)
                            _signupFormController.createAccount("", "");
                        })
                      ],
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
