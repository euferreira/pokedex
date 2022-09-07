import 'package:dartz/dartz.dart';
import 'package:pokedex/app/module/home/domain/contracts/ihome.repository.dart';
import 'package:pokedex/app/module/home/domain/entity/pokemon.entity.dart';
import 'package:pokedex/app/module/home/infra/ihome.datasource.dart';

class HomeRepository implements IHomeRepository {
  final IHomeDataSource dataSource;

  HomeRepository(this.dataSource);

  @override
  Future<Either<Fail, List<PokemonEntity>>> getPokemonList() async {
    try {
      final result = await dataSource.getPokemonList();
      return Right(result);
    } catch (e) {
      return Left(Fail(e.toString()));
    }
  }
}