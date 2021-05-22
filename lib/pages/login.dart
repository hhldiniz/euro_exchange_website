import 'package:euro_exchange_api_website/controllers/login_form.dart';
import 'package:euro_exchange_api_website/util/dependency_injector.dart';
import 'package:euro_exchange_api_website/widgets/material_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FormController _loginFormController =
        DependencyInjector.getDependencyByTag(FormController.Tag);

    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Container(
                child: Wrap(
                  children: [
                    MaterialTextField(_loginFormController.usernameEditingController),
                    MaterialTextField(_loginFormController.passwordEditingController),
                  ],
                  direction: Axis.horizontal,
                ),
                constraints: BoxConstraints.loose(Size(300, 100)),
              )
            ],
          )
        ],
      ),
    );
  }
}
