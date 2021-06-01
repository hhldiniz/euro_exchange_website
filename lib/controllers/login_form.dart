import 'base_controller.dart';

class FormController extends BaseController {

  String? fieldIsValid(String value, String errorMessage) {
    if (value.isEmpty) {
      return errorMessage;
    }
    return null;
  }

  validate() {}

  @override
  bool get isPermanent => false;

  @override
  String get tag => Tag;

  static const String Tag = "FormController";

  @override
  bool get lazy => true;
}
