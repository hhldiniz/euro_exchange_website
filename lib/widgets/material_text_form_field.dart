import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MaterialTextFormField extends StatelessWidget {
  final String? _labelText;
  final TextEditingController? _controller;
  final FormFieldValidator _validator;
  final String? _initialValue;

  MaterialTextFormField({controller, initialValue, labelText, validator})
      : this._controller = controller,
        this._initialValue = initialValue,
        this._labelText = labelText,
        this._validator = validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: this._controller != null ? null : _initialValue,
      controller: this._initialValue != null ? null : this._controller,
      validator: _validator,
      decoration:
          InputDecoration(border: OutlineInputBorder(), labelText: _labelText),
    );
  }
}
