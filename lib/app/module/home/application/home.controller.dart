import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get/get.dart';
import 'package:pokedex/app/module/home/domain/contracts/ihome.usecase.dart';
import 'package:pokedex/app/module/home/domain/entity/pokemon.entity.dart';

class HomeController extends GetxController {
  final IHomeUsecase usecase;
  late StreamSubscription<bool> keyboardStream;

  final isLoading = false.obs;
  final keyboardEnabled = false.obs;

  final pokeList = <PokemonEntity>[].obs;

  HomeController({required this.usecase});

  @override
  void onInit() async {
    super.onInit();
    isLoading.value = true;
    keyboardStream = KeyboardVisibilityController().onChange.listen((event) {
      keyboardEnabled.value = event;
    });
    await mountPokeList();
    isLoading.value = false;
  }

  FutureOr<void> mountPokeList() async {
    final results = await usecase.getPokemonList();
    results.fold(
      (l) => debugPrint(l.failure.toString()),
      (r) => pokeList.value = r,
    );
  }
}
