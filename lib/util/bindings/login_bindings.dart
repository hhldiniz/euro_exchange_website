import 'package:euro_exchange_api_website/controllers/link_state_controller.dart';
import 'package:euro_exchange_api_website/controllers/login_form.dart';
import 'package:get/get.dart';

import '../dependency_injector.dart';

class LoginBindings extends Bindings{
  @override
  void dependencies() {
    DependencyInjector.injectDependency([
      FormController(),
      LinkStateController()
    ]);
  }

}