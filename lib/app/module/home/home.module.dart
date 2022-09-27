import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:pokedex/app/core/app.module.dart';
import 'package:pokedex/app/module/pokemon/pokemon.module.dart';

import 'application/home.binding.dart';
import 'application/home.page.dart';

class HomeModule implements Module {
  @override
  List<GetPage> routes = [
    GetPage(
      name: '/home',
      page: () => const HomePage(),
      binding: HomeBinding(),
      children: [
        ...PokemonModule().routes,
      ],
    ),
  ];
}
