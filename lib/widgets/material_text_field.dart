import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MaterialTextField extends StatelessWidget{

  final TextEditingController _controller;

  MaterialTextField(this._controller);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      decoration: InputDecoration(border: OutlineInputBorder()),
    );
  }

}