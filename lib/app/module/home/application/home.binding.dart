import 'package:get/get.dart';
import 'package:pokedex/app/module/home/application/home.controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    exports();
    Get.lazyPut(() => HomeController());
  }

  void exports() {

  }
}