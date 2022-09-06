import 'dart:async';

import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  late StreamSubscription<bool> keyboardStream;
  RxBool keyboardEnabled = false.obs;

  @override
  void onInit() {
    super.onInit();
    keyboardStream = KeyboardVisibilityController().onChange.listen((event) {
      keyboardEnabled.value = event;
    });
  }
}