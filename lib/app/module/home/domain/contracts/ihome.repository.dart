import 'package:dartz/dartz.dart';
import 'package:pokedex/app/module/home/domain/entity/pokemon.entity.dart';

abstract class IHomeRepository {
  Future<Either<Fail, List<PokemonEntity>>> getPokemonList();
}