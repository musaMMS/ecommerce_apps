import 'package:get/get.dart';
class BottomNavController extends GetxController{

  int _selectedIndex =0;

  int? get selectedIndex => _selectedIndex;

  void changeIndex (int index ){
    _selectedIndex =index;
    update();
  }

}