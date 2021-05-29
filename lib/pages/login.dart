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
      body: Column(
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
                  child: Card(
                child: Container(
                  child: Form(
                    key: _formKey,
                    child: Wrap(
                      runSpacing: 8,
                      children: [
                        MaterialTextFormField(
                          initialValue: "",
                          validator: (value) =>
                              _loginFormController.fieldIsValid(
                                  value, _localizations.formFieldRequired),
                          labelText: _localizations.username,
                        ),
                        MaterialTextFormField(
                          initialValue: "",
                          validator: (value) =>
                              _loginFormController.fieldIsValid(
                                  value, _localizations.formFieldRequired),
                          labelText: _localizations.password,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 32),
                          child: Align(
                            child:
                                PrimaryButton(_localizations.homeMenuLogin, () {
                              if (_formKey.currentState?.validate() == true) {}
                            }),
                            alignment: Alignment.centerRight,
                          ),
                        )
                      ],
                    ),
                  ),
                  constraints: BoxConstraints.loose(Size(300, 100)),
                ),
              )),
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
    );
  }
}
