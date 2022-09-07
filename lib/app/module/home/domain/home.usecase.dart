import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:pokedex/app/module/home/domain/contracts/ihome.repository.dart';
import 'package:pokedex/app/module/home/domain/contracts/ihome.usecase.dart';
import 'package:pokedex/app/module/home/domain/entity/pokemon.entity.dart';

class HomeUsecase implements IHomeUsecase {
  final IHomeRepository repository;

  HomeUsecase(this.repository);

  @override
  FutureOr<Either<Fail, List<PokemonEntity>>> getPokemonList() async {
    return await repository.getPokemonList();
  }
}
