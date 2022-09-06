import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokedex/app/core/app.module.dart';
import 'package:pokedex/app/module/home/application/home.page.dart';

import '../shared/theme/app.theme.dart';
import 'app.binding.dart';

class PokeApp extends StatelessWidget {
  const PokeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Pokedex',
      initialRoute: '/home',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      initialBinding: AppBinding(),
      getPages: AppModule().routes,
    );
  }
}
