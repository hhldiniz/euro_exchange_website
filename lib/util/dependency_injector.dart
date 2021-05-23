import 'package:euro_exchange_api_website/controllers/base_controller.dart';
import 'package:get/get.dart';

class DependencyInjector {
  static injectDependency<T extends BaseController>(List<T> dependency) {
    dependency.forEach((BaseController element) {
      if (element.lazy)
        Get.lazyPut(() => element, tag: element.tag);
      else
        Get.put(element, tag: element.tag, permanent: element.isPermanent);
    });
  }

  static T getDependencyByTag<T extends BaseController>(String? tag) =>
      Get.find<BaseController>(tag: tag) as T;

  static getDependencyByType<T extends BaseController>() =>
      Get.find<BaseController>() as T;
}
