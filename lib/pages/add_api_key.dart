import 'package:euro_exchange_api_website/util/localizations.dart';
import 'package:euro_exchange_api_website/widgets/material_text_form_field.dart';
import 'package:euro_exchange_api_website/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AddApiKeyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MyAppLocalizations _localizations = MyAppLocalizations.of(context)!;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
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
                  children: [
                    PrimaryButton(_localizations.generateApiKeyButton, () => {})
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: MaterialTextFormField(
                          initialValue: "",
                          labelText: _localizations.generatedApiKey,
                          editable: false,
                        ))
                  ],
                )
              ],
            )),
          )
        ],
      ),
    );
  }
}
