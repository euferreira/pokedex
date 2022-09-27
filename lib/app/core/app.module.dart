
import 'package:get/get.dart';
import 'package:pokedex/app/module/home/home.module.dart';
import 'package:pokedex/app/module/pokemon/pokemon.module.dart';

abstract class Module {
  late List<GetPage> routes;
}

class AppModule implements Module {
  @override
  List<GetPage> routes = [
    ...HomeModule().routes,
    ...PokemonModule().routes,
  ];
}