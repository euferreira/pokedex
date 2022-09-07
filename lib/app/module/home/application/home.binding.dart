import 'package:get/get.dart';
import 'package:pokedex/app/module/home/application/home.controller.dart';
import 'package:pokedex/app/module/home/domain/home.usecase.dart';
import 'package:pokedex/app/module/home/infra/datasource/home.datasource.dart';
import 'package:pokedex/app/shared/dio/poke.client.dio.dart';

import '../infra/repository/home.repository.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    exports();
    Get.lazyPut(
      () => HomeController(
        usecase: Get.find<HomeUsecase>(),
      ),
    );
  }

  void exports() {
    Get.lazyPut<HomeUsecase>(() {
      final datasource = HomeDatasource(PokeClientDio());
      final repository = HomeRepository(datasource);
      return HomeUsecase(repository);
    });
  }
}
