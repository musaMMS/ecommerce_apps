import 'package:ecommerce_apps/sate_holder/botton_nav_controller.dart';
import 'package:get/get.dart';
class ControllerBinder extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => BottomNavController());
  }

}