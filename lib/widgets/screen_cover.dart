import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ScreenCover extends StatelessWidget{

  final double? widthFactor;
  final double? heightFactor;
  final int? alpha;
  final Color? color;

  ScreenCover({this.widthFactor, this.heightFactor, this.alpha, this.color});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width * (widthFactor ?? 1),
      height: screenSize.height * (heightFactor ?? 1),
      color: _getColor().withAlpha(alpha ?? 100),
    );
  }

  Color _getColor() => color ?? Colors.black;

}