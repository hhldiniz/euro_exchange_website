import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PrimaryButton extends StatelessWidget{

  final String _label;
  final Function _onPressed;

  PrimaryButton(this._label, this._onPressed);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: ()=> _onPressed(),
      child: Text(_label),
      style: ButtonStyle(
          minimumSize:
          MaterialStateProperty.resolveWith<Size>(
                  (states) => Size(120, 50)),
          shape: MaterialStateProperty.resolveWith(
                  (states) => RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                      Radius.circular(16))))),
    );
  }

}