import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class Controller extends GetxController{

  var sum=0;
  var num1=0;
  var num2=0;



 increment(){num1++;update();}

 dincrement(){num2++;update();}

 summe(){sum=num1;update();}

}