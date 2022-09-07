import 'package:dartz/dartz.dart';

import '../../domain/contracts/ipokemon.repository.dart';
import '../../domain/entity/pokemon.entity.dart';
import '../ipokemon.datasource.dart';

class PokemonFindRepository implements IPokemonFindRepository {
  final IPokemonFindDataSource dataSource;

  PokemonFindRepository(this.dataSource);

  @override
  Future<Either<Fail, PokemonEntity>> getPokemonAttributesList({required PokemonFindParams params}) async {
    try {
      final result = await dataSource.getPokemonAttributesList(params: params);
      return Right(result);
    } catch (e) {
      return Left(Fail(e));
    }
  }

  @override
  Future<Either<Fail, PokemonListEntity>> getPokemonList({PokemonFindParams? params}) async {
    try {
      final result = await dataSource.getPokemonList(params: params);
      return Right(result);
    } catch (e) {
      return Left(Fail(e.toString()));
    }
  }
}