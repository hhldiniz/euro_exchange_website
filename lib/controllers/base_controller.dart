import 'package:get/get.dart';

abstract class BaseController extends GetxController{
  bool get isPermanent;
  bool get lazy;
  String get tag;
}