
import 'package:get/get.dart';

class ControllerBnb extends GetxController{
List<String> listBNB=['Home','Likes','Search','Profile'].obs;
var tabIndex = 0;
void changeTabIndex(int index) {
  tabIndex = index;
  update();
}

}

