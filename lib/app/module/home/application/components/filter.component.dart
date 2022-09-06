import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:pokedex/app/module/home/application/home.controller.dart';
import 'package:pokedex/app/shared/theme/app.styles.dart';

class FilterComponent extends GetView<HomeController> {
  final double maxWidth;
  final double maxHeight;

  const FilterComponent({
    Key? key,
    required this.maxWidth,
    required this.maxHeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      top: -650,
      child: Opacity(
        opacity: 0.06,
        child: SvgPicture.asset(
          'assets/patterns/pokeball.svg',
          color: AppStyles.grey700,
          height: maxHeight,
          width: maxWidth,
        ),
      ),
    );
  }
}
