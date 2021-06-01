import 'package:dio/dio.dart';
import 'package:euro_exchange_api_website/controllers/base_controller.dart';
import 'package:euro_exchange_api_website/controllers/request_controller.dart';
import 'package:euro_exchange_api_website/controllers/http_method.dart';
import 'package:euro_exchange_api_website/util/dependency_injector.dart';

class SignupFormController extends BaseController {
  RequestController _requestController =
      DependencyInjector.getDependencyByTag(RequestController.Tag);

  Future<bool> createAccount(String username, String password) async {
    var data = FormData();
    data.fields.add(MapEntry("username", username));
    data.fields.add(MapEntry("password", password));
    var response = await _requestController
        .makeRequest(HttpMethod.POST, "/signup", data: data);
    return true;
  }

  @override
  bool get isPermanent => false;

  @override
  bool get lazy => false;

  @override
  String get tag => Tag;

  static const String Tag = "SignupFormController";
}
