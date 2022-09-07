import 'package:get/get.dart';

import '../../domain/entity/pokemon.entity.dart';

class PokemonModel extends PokemonEntity {
  PokemonModel({
    required super.order,
    required super.name,
    required super.types,
    required super.urlImage,
  });

  factory PokemonModel.fromJson(Map<String, dynamic> json) {
    return PokemonModel(
      order: "#${json['id'].toString().padLeft(3, '0')}",
      name: json['name'].toString().capitalizeFirst ?? "",
      types: (json['types'] as List).map((e) => TypesModel(name: e['type']['name'].toString().capitalizeFirst ?? "")).toList(),
      urlImage: json['sprites']['front_default'],
    );
  }
}

class TypesModel extends TypesEntity {
  TypesModel({
    required super.name,
  });
}

class PokemonListModel extends PokemonListEntity {
  PokemonListModel({
    required super.count,
    required super.next,
    required super.previous,
    required super.results,
  });

  factory PokemonListModel.fromJson(Map<String, dynamic> json) {
    return PokemonListModel(
      count: json['count'],
      next: json['next'],
      previous: json['previous'],
      results: (json['results'] as List).map((e) => ResultsModel(name: e['name'].toString(), url: e['url'])).toList(),
    );
  }
}

class ResultsModel extends ResultsEntity {
  ResultsModel({
    required super.name,
    required super.url,
  });
}


