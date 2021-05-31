import 'dart:ui';

import 'package:euro_exchange_api_website/controllers/link_state_controller.dart';
import 'package:euro_exchange_api_website/controllers/login_form.dart';
import 'package:euro_exchange_api_website/util/dependency_injector.dart';
import 'package:euro_exchange_api_website/util/localizations.dart';
import 'package:euro_exchange_api_website/widgets/material_text_form_field.dart';
import 'package:euro_exchange_api_website/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FormController _loginFormController =
        DependencyInjector.getDependencyByTag(FormController.Tag);
    LinkStateController _linkStateController =
        DependencyInjector.getDependencyByTag(LinkStateController.Tag);

    MyAppLocalizations _localizations = MyAppLocalizations.of(context)!;
    var _formKey = GlobalKey<FormState>();

    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        color: Colors.blueGrey,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            _localizations.homeMenuLogin,
            style: TextStyle(fontSize: 24),
            textAlign: TextAlign.left,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white10.withOpacity(0.1),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Expanded(
                              flex: 1,
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 16),
                                child: MaterialTextFormField(
                                  initialValue: "",
                                  focusColor: Colors.white,
                                  validator: (value) =>
                                      _loginFormController.fieldIsValid(value,
                                          _localizations.formFieldRequired),
                                  labelText: _localizations.username,
                                ),
                              )),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                              flex: 1,
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 16),
                                child: MaterialTextFormField(
                                  initialValue: "",
                                  focusColor: Colors.white,
                                  validator: (value) =>
                                      _loginFormController.fieldIsValid(value,
                                          _localizations.formFieldRequired),
                                  labelText: _localizations.password,
                                ),
                              )),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                              flex: 1,
                              child: Padding(
                                padding: EdgeInsets.only(top: 32),
                                child: Align(
                                  child: Padding(
                                    padding: EdgeInsets.only(right: 16),
                                    child: PrimaryButton(
                                        _localizations.homeMenuLogin, () {
                                      if (_formKey.currentState?.validate() ==
                                          true) {}
                                    }),
                                  ),
                                  alignment: Alignment.centerRight,
                                ),
                              ))
                        ],
                      )
                    ],
                  ),
                ),
                constraints: BoxConstraints.loose(Size(500, 300)),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 8),
            child: GestureDetector(
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                onEnter: (event) {
                  _linkStateController.linkColor.value = Colors.grey;
                },
                onExit: (event) {
                  _linkStateController.linkColor.value = Colors.blue;
                },
                child: Obx(() => Text(
                      _localizations.createAccount,
                      style: TextStyle(
                          color: _linkStateController.linkColor.value),
                    )),
              ),
              onTap: () {
                Get.toNamed("/signup");
              },
            ),
          )
        ],
      ),
    ));
  }
}
