import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class Controller extends GetxController{

  RxInt count = 2.obs;
  increment(){

    count++;

  }

}