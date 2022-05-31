import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class Controller extends GetxController{

  int count = 0;
  increment(){

    count++;
    update();
  }

}