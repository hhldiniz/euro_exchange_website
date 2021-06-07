import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MaterialTextFormField extends StatelessWidget {
  final String? _labelText;
  final TextEditingController? _controller;
  final FormFieldValidator? _validator;
  final String? _initialValue;
  final Color? _focusColor;
  final TextInputType? _inputType;
  final bool _isPassword;
  final bool _editable;

  MaterialTextFormField(
      {controller,
      initialValue,
      labelText,
      validator,
      focusColor,
      inputType,
      isPassword = false,
      editable = true})
      : this._controller = controller,
        this._initialValue = initialValue,
        this._labelText = labelText,
        this._validator = validator,
        this._focusColor = focusColor,
        this._inputType = inputType,
        this._isPassword = isPassword,
        this._editable = editable;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: this._controller != null ? null : _initialValue,
      controller: this._initialValue != null ? null : this._controller,
      validator: _validator,
      obscureText: _isPassword,
      enabled: _editable,
      style: TextStyle(color: _focusColor ?? Theme.of(context).accentColor),
      keyboardType: _inputType ?? TextInputType.name,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: _focusColor ?? Theme.of(context).accentColor)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: _focusColor ?? Theme.of(context).accentColor)),
          labelText: _labelText,
          labelStyle:
              TextStyle(color: _focusColor ?? Theme.of(context).accentColor)),
    );
  }
}
