import 'package:flutter/cupertino.dart';
import 'base_controller.dart';

class FormController extends BaseController{
  TextEditingController usernameEditingController = TextEditingController();
  TextEditingController passwordEditingController = TextEditingController();

  @override
  bool get isPermanent => false;

  @override
  String get tag => Tag;

  static const String Tag = "FormController";
}