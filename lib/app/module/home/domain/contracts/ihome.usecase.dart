import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:pokedex/app/module/home/domain/entity/pokemon.entity.dart';

abstract class IHomeUsecase {
  FutureOr<Either<Fail, List<PokemonEntity>>> getPokemonList();
}
