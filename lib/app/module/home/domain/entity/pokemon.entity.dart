class PokemonEntity {
  final String order;
  final String name;
  final List<TypesEntity> types;
  final String? urlImage;

  PokemonEntity({
    required this.order,
    required this.name,
    required this.types,
    required this.urlImage,
  });
}

class TypesEntity {
  final String? name;

  TypesEntity({
    required this.name,
  });
}