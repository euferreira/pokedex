import 'package:dartz/dartz.dart';

import '../entity/pokemon.entity.dart';

abstract class IPokemonFindRepository {
  Future<Either<Fail, PokemonListEntity>> getPokemonList({PokemonFindParams? params});

  Future<Either<Fail, PokemonEntity>> getPokemonAttributesList({required PokemonFindParams params});
}
