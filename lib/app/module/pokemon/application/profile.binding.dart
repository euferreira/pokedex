import 'package:get/get.dart';
import 'package:pokedex/app/module/pokemon/application/profile.controller.dart';

class ProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileController>(() => ProfileController());
  }
}