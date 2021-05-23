import 'package:euro_exchange_api_website/controllers/base_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LinkStateController extends BaseController{

  Rx<Color> linkColor = Colors.blue.obs;

  @override
  bool get isPermanent => false;

  @override
  bool get lazy => false;

  @override
  String get tag => Tag;

  static const String Tag = "LinkStateController";

}