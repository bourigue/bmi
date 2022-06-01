import 'package:bmi/controller/controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

class bindingcontroller extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=>Controller(),fenix: true);
  }



}