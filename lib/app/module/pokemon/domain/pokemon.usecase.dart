import 'dart:async';

import 'package:dartz/dartz.dart';

import 'contracts/ipokemon.repository.dart';
import 'contracts/ipokemon.usecase.dart';
import 'entity/pokemon.entity.dart';

class PokemonFindUsecase implements IPokemonFindUsecase {
  final IPokemonFindRepository repository;

  PokemonFindUsecase(this.repository);

  @override
  FutureOr<Either<Fail, PokemonListEntity>> getPokemonList({PokemonFindParams? params}) async {
    print('params => ${params?.next ?? "Não tem"}');
    return await repository.getPokemonList(params: params);
  }

  @override
  Future<Either<Fail, PokemonEntity>> getPokemonAttributesList({required PokemonFindParams params}) async {
    return await repository.getPokemonAttributesList(params: params);
  }
}
