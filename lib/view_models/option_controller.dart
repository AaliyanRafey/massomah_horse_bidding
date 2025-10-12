import 'package:get/get.dart';

class OptionController extends GetxController {
  var selectedIndex = (-1).obs;

  void selectOption(int index) {
    selectedIndex.value = index;
  }
}
