import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:pokedex/app/shared/dio/client.dio.dart';

import '../../domain/entity/pokemon.entity.dart';
import '../ipokemon.datasource.dart';
import '../model/pokemon.model.dart';

class PokemonFindDatasource implements IPokemonFindDataSource {
  final ClientDio clientDio;

  PokemonFindDatasource(this.clientDio);

  @override
  Future<PokemonEntity> getPokemonAttributesList({required PokemonFindParams params}) async {
    try {
      final response = await clientDio.client.get("/pokemon/${params.name}");
      return PokemonModel.fromJson(response.data);
    }
    catch (e) {
      throw Fail(e);
    }
  }

  @override
  Future<PokemonListEntity> getPokemonList({PokemonFindParams? params}) async {
    try {
      Map<String, int> query = {
        "limit": 5,
        "offset": params != null ? params.next! : 0,
      };

      final response = await clientDio.client.get("/pokemon", queryParameters:query);
      return PokemonListModel.fromJson(response.data);
    }
    catch (e) {
      throw Fail(e);
    }
  }
}
