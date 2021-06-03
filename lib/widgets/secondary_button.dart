import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SecondaryButton extends StatelessWidget {
  final String _label;
  final Function _onPressed;

  SecondaryButton(this._label, this._onPressed);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: ()=> _onPressed(),
      child: Text(_label),
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith(
              (states) => Colors.grey.withOpacity(0.5)),
          minimumSize: MaterialStateProperty.resolveWith<Size>(
              (states) => Size(120, 50)),
          shape: MaterialStateProperty.resolveWith((states) =>
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16))))),
    );
  }
}
