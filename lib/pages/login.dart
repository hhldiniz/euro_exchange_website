import 'package:euro_exchange_api_website/controllers/login_form.dart';
import 'package:euro_exchange_api_website/util/dependency_injector.dart';
import 'package:euro_exchange_api_website/util/localizations.dart';
import 'package:euro_exchange_api_website/widgets/material_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FormController _loginFormController =
        DependencyInjector.getDependencyByTag(FormController.Tag);
    MyAppLocalizations _localizations = MyAppLocalizations.of(context)!;
    var _formKey = GlobalKey<FormState>();

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Center(
                  child: Container(
                    child: Form(
                      key: _formKey,
                      child: Wrap(
                        children: [
                          Text(
                            _localizations.homeMenuLogin,
                            style: TextStyle(fontSize: 20),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 8, bottom: 8),
                            child: MaterialTextFormField(
                              initialValue: "",
                              validator: (value) =>
                                  _loginFormController.fieldIsValid(
                                      value, _localizations.formFieldRequired),
                              labelText: _localizations.username,
                            ),
                          ),
                          MaterialTextFormField(
                            initialValue: "",
                            validator: (value) =>
                                _loginFormController.fieldIsValid(
                                    value, _localizations.formFieldRequired),
                            labelText: _localizations.password,
                          ),
                          Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                  padding: EdgeInsets.only(top: 8),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      if (_formKey.currentState?.validate() ==
                                          true) {}
                                    },
                                    child: Text(_localizations.homeMenuLogin),
                                    style: ButtonStyle(
                                        minimumSize: MaterialStateProperty
                                            .resolveWith<Size>(
                                                (states) => Size(80, 40))),
                                  )))
                        ],
                      ),
                    ),
                    constraints: BoxConstraints.loose(Size(300, 100)),
                  ),
                ),
                decoration: BoxDecoration(
                    border: Border(
                        top: BorderSide(color: Colors.black12, width: 4),
                        right: BorderSide(color: Colors.black12, width: 4),
                        left: BorderSide(color: Colors.black12, width: 4),
                        bottom: BorderSide(color: Colors.black12, width: 4)),
                    borderRadius: BorderRadius.circular(8)),
                constraints: BoxConstraints(minWidth: 400, minHeight: 300),
              )
            ],
          )
        ],
      ),
    );
  }
}
