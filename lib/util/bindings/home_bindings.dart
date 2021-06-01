import 'package:euro_exchange_api_website/controllers/request_controller.dart';
import 'package:euro_exchange_api_website/util/dependency_injector.dart';
import 'package:get/get.dart';

class HomeBindings extends Bindings {
  @override
  void dependencies() {
    DependencyInjector.injectDependency([RequestController()]);
  }
}
