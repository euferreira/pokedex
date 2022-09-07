import 'package:get/get.dart';
import 'package:pokedex/app/module/home/application/home.controller.dart';
import 'package:pokedex/app/module/pokemon/domain/pokemon.usecase.dart';
import 'package:pokedex/app/module/pokemon/infra/repository/pokemon.repository.dart';
import 'package:pokedex/app/shared/dio/poke.client.dio.dart';

import '../../pokemon/infra/datasource/pokemon.datasource.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    exports();
    Get.lazyPut(
      () => HomeController(
        usecase: Get.find<PokemonFindUsecase>(),
      ),
    );
  }

  void exports() {
    Get.lazyPut<PokemonFindUsecase>(() {
      final datasource = PokemonFindDatasource(PokeClientDio());
      final repository = PokemonFindRepository(datasource);
      return PokemonFindUsecase(repository);
    });
  }
}
