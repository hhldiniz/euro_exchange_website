import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MaterialTextFormField extends StatelessWidget {
  final String? _labelText;
  final TextEditingController? _controller;
  final FormFieldValidator? _validator;
  final String? _initialValue;
  final Color? _focusColor;

  MaterialTextFormField(
      {controller, initialValue, labelText, validator, focusColor})
      : this._controller = controller,
        this._initialValue = initialValue,
        this._labelText = labelText,
        this._validator = validator,
        this._focusColor = focusColor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: this._controller != null ? null : _initialValue,
      controller: this._initialValue != null ? null : this._controller,
      validator: _validator,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: _labelText,
          focusColor: _focusColor ?? Theme.of(context).accentColor),
    );
  }
}
