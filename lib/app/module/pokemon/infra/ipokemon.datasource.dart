import 'dart:async';

import '../domain/entity/pokemon.entity.dart';

abstract class IPokemonFindDataSource {
  Future<PokemonListEntity> getPokemonList({PokemonFindParams? params});

  Future<PokemonEntity> getPokemonAttributesList({required PokemonFindParams params});
}
