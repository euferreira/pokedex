import 'package:get/get.dart';
import 'package:pokedex/app/module/home/domain/entity/pokemon.entity.dart';

class PokemonModel extends PokemonEntity {
  PokemonModel({
    required super.order,
    required super.name,
    required super.types,
    required super.urlImage,
  });

  factory PokemonModel.fromJson(Map<String, dynamic> json) {
    return PokemonModel(
      order: "#${json['order'].toString().padLeft(3, '0')}",
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
