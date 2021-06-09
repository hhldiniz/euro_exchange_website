import 'package:euro_exchange_api_website/controllers/add_api_key_form_controller.dart';
import 'package:euro_exchange_api_website/util/dependency_injector.dart';
import 'package:get/get.dart';

class AddApiKeyBindings extends Bindings{
  @override
  void dependencies() {
    DependencyInjector.injectDependency([AddApiKeyFormController()]);
  }

}