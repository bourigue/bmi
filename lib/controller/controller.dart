import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class Controller extends GetxController{


  var num1=0.obs;
  var num2=0.obs;



 increment(){num1++;}

 dincrement(){num2++;}

 int get summ=>num1.value+num2.value;



}

