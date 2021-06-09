import 'package:euro_exchange_api_website/controllers/add_api_key_form_controller.dart';
import 'package:euro_exchange_api_website/util/dependency_injector.dart';
import 'package:euro_exchange_api_website/util/localizations.dart';
import 'package:euro_exchange_api_website/widgets/material_text_form_field.dart';
import 'package:euro_exchange_api_website/widgets/primary_button.dart';
import 'package:euro_exchange_api_website/widgets/secondary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AddApiKeyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MyAppLocalizations _localizations = MyAppLocalizations.of(context)!;
    AddApiKeyFormController _addApiKeyFormController =
        DependencyInjector.getDependencyByTag(AddApiKeyFormController.Tag);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              constraints: BoxConstraints(maxWidth: 350),
              child: Form(
                  child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                          flex: 1,
                          child: MaterialTextFormField(
                            initialValue: "",
                            labelText: _localizations.newApiKeyNameLabel,
                          ))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        child: SecondaryButton(
                            _localizations.generateApiKeyButton, () => {
                              _addApiKeyFormController.generateApiKey()
                        }),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          flex: 1,
                          child: MaterialTextFormField(
                            controller:
                                _addApiKeyFormController.apiKeyFieldController,
                            labelText: _localizations.generatedApiKey,
                            editable: false,
                          ))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 8),
                        child: PrimaryButton(_localizations.save, () => {}),
                      )
                    ],
                  )
                ],
              )),
            )
          ],
        ),
      ),
    );
  }
}
