
import 'package:get/get.dart';
import 'package:pokedex/app/module/home/home.module.dart';

abstract class Module {
  late List<GetPage> routes;
}

class AppModule implements Module {
  @override
  List<GetPage> routes = [
    ...HomeModule().routes,
  ];
}