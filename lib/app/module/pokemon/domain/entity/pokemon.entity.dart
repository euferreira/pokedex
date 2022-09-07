class PokemonListEntity {
  final int? count;
  final String? next;
  final String? previous;
  final List<ResultsEntity>? results;

  PokemonListEntity({
    this.count,
    this.next,
    this.previous,
    this.results,
  });

  int getOffset() {
    if (next != null) {
      Uri uri = Uri.parse(next!);
      return int.parse(uri.queryParameters['offset']!);
    }
    return 0;
  }
}

class ResultsEntity {
  final String name;
  final String url;

  ResultsEntity({
    required this.name,
    required this.url,
  });
}

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

class PokemonFindParams {
  final String? name;
  final int? next;

  PokemonFindParams({
    this.name,
    this.next,
  });
}