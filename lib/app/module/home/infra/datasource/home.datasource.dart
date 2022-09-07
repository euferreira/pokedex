import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:pokedex/app/module/home/domain/entity/pokemon.entity.dart';
import 'package:pokedex/app/module/home/infra/ihome.datasource.dart';
import 'package:pokedex/app/module/home/infra/model/pokemon.model.dart';
import 'package:pokedex/app/shared/dio/client.dio.dart';

class HomeDatasource implements IHomeDataSource {
  final ClientDio clientDio;
  
  HomeDatasource(this.clientDio);
  
  @override
  Future<List<PokemonEntity>> getPokemonList() async {
    try {
      final response = await clientDio.client.get("/pokemon", queryParameters: {
        "limit": 30,
      });
      List<PokemonEntity> pokemons = [];
      for (var item in response.data["results"]) {
        final response = await clientDio.client.get("/pokemon/${item["name"]}");
        pokemons.add(PokemonModel.fromJson(response.data));
      }
      return pokemons;
    }
    catch (e) {
      throw Fail(e);
    }
  }  
}
