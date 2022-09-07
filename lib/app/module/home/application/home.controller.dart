import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';

import '../../pokemon/domain/contracts/ipokemon.usecase.dart';
import '../../pokemon/domain/entity/pokemon.entity.dart';

class HomeController extends GetxController {
  final IPokemonFindUsecase usecase;
  late StreamSubscription<bool> keyboardStream;
  PokemonListEntity pokemonList = PokemonListEntity();

  final isLoading = false.obs;
  final isLoadingMore = false.obs;
  final keyboardEnabled = false.obs;
  final pokeList = <PokemonEntity>[].obs;

  final refresherController = RefreshController(initialRefresh: false).obs;

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

  FutureOr<void> mountPokeList({bool findMore = false}) async {
    print('findMore: $findMore');
    final results = await usecase.getPokemonList(
        params: PokemonFindParams(
      next: findMore && pokemonList.next != null ? pokemonList.getOffset() : 0,
    ));
    await results.fold((failure) => null, (success) async {
      pokemonList = success;
      for (final results in success.results!) {
        final pokemons = await usecase.getPokemonAttributesList(
            params: PokemonFindParams(name: results.name));
        pokemons.fold(
          (failure) => null,
          (success) {
            pokeList.add(success);
            print('tamanho da lista => ${pokeList.length}');
          },
        );
      }
    });
  }

  void openGenerationBottomsheet() {
    Get.bottomSheet(
      Container(),
    );
  }

  void openSortBottomsheet() {
    Get.bottomSheet(
      Container(),
    );
  }

  void openFilterBottomsheet() {
    Get.bottomSheet(
      Container(),
    );
  }
}
