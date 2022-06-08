import 'package:flutter/cupertino.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../view/home/home2_body.dart';

class DashboardController extends GetxController {
  var tabIndex = 0;
  static  List<Widget> pages = <Widget>[ home(),Text("bbbb")];
  void changeTabIndex(int index) {
    tabIndex = index;
    update();
  }
}