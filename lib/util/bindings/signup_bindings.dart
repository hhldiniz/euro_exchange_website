import 'package:euro_exchange_api_website/controllers/signup_form.dart';
import 'package:euro_exchange_api_website/util/dependency_injector.dart';
import 'package:get/get.dart';

class SignupBindings extends Bindings{
  @override
  void dependencies() {
    DependencyInjector.injectDependency([SignupFormController()]);
  }

}