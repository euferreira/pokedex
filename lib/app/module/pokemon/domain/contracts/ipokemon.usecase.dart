import 'dart:async';

import 'package:dartz/dartz.dart';

import '../entity/pokemon.entity.dart';

abstract class IPokemonFindUsecase {
  FutureOr<Either<Fail, PokemonListEntity>> getPokemonList({PokemonFindParams? params});

  Future<Either<Fail, PokemonEntity>> getPokemonAttributesList({required PokemonFindParams params});
}
