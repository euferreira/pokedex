import 'dart:async';

import 'package:pokedex/app/module/home/domain/entity/pokemon.entity.dart';

abstract class IHomeDataSource {
  Future<List<PokemonEntity>> getPokemonList();
}