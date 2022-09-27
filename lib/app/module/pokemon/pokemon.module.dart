import 'package:get/get.dart';
import 'package:pokedex/app/module/pokemon/application/profile.binding.dart';
import 'package:pokedex/app/module/pokemon/application/profile.page.dart';

import '../../core/app.module.dart';

class PokemonModule implements Module {
  @override
  List<GetPage> routes = [
    GetPage(
      name: '/profile',
      page: () => const ProfilePage(),
      binding: ProfileBinding(),
    ),
  ];
}
