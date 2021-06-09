import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:euro_exchange_api_website/controllers/base_controller.dart';
import 'package:flutter/widgets.dart';

class AddApiKeyFormController extends BaseController {
  TextEditingController apiKeyFieldController = TextEditingController();

  generateApiKey() {
    apiKeyFieldController.text = md5
        .convert(utf8.encode(DateTime.now().millisecond.toString()))
        .toString();
  }

  @override
  bool get isPermanent => true;

  @override
  bool get lazy => false;

  @override
  String get tag => Tag;

  static const String Tag = "AddApiKeyFormController";
}
