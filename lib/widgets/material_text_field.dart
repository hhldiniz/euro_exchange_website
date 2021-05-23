import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MaterialTextField extends StatelessWidget {
  final TextEditingController _controller;
  final String? _labelText;

  MaterialTextField(this._controller, {labelText}) : this._labelText = labelText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      decoration:
          InputDecoration(border: OutlineInputBorder(), labelText: _labelText),
    );
  }
}
