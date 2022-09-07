import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:pokedex/app/module/home/application/home.controller.dart';
import 'package:pokedex/app/module/home/domain/entity/pokemon.entity.dart';
import 'package:pokedex/app/shared/theme/app.styles.dart';

class CardComponent extends GetView<HomeController> {
  final double maxWidth;
  final double maxHeight;
  final PokemonEntity pokemon;

  const CardComponent({
    Key? key,
    required this.maxHeight,
    required this.maxWidth,
    required this.pokemon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return pokeCard(context);
  }

  Obx pokeCard(BuildContext context) {
    return Obx(
      () => Stack(
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 250),
            height: controller.keyboardEnabled.isTrue ? 99 : maxHeight * 0.15,
            margin: const EdgeInsets.only(bottom: 35),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: colorByType(),
            ),
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        pokemon.order,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      Text(
                        pokemon.name,
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                              color: AppStyles.white1000,
                            ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color:
                                  badgeBackground(pokemon.types[0].name ?? ""),
                            ),
                            padding: const EdgeInsets.all(6),
                            child: Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/types/${iconByType(pokemon.types[0].name ?? "")}.svg',
                                  color: AppStyles.white1000,
                                  width: 13,
                                  height: 13,
                                ),
                                const SizedBox(width: 5),
                                Text(
                                  pokemon.types[0].name ?? "",
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelSmall!
                                      .copyWith(
                                        color: AppStyles.white1000,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          if (pokemon.types.length > 1) ...[
                            const SizedBox(
                              width: 5,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: badgeBackground(
                                    pokemon.types[1].name ?? ""),
                              ),
                              padding: const EdgeInsets.all(6),
                              child: Row(
                                children: [
                                  SvgPicture.asset(
                                    'assets/types/${iconByType(pokemon.types[1].name ?? "")}.svg',
                                    color: AppStyles.white1000,
                                    width: 13,
                                    height: 13,
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    pokemon.types[1].name ?? "",
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall!
                                        .copyWith(
                                          color: AppStyles.white1000,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Opacity(
                opacity: 0.1,
                child: SvgPicture.asset(
                  'assets/patterns/pokeball.svg',
                  color: AppStyles.grey700,
                  width: maxWidth * 0.28,
                ),
              ),
            ],
          ),
          Positioned(
            top: -15,
            left: 100,
            child: Opacity(
              opacity: 0.5,
              child: SvgPicture.asset(
                'assets/patterns/6x3.svg',
                color: AppStyles.white30,
                allowDrawingOutsideViewBox: true,
                width: 50,
                height: 50,
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Spacer(),
              if (pokemon.urlImage != null)
                Image.network(
                  pokemon.urlImage!,
                  width: MediaQuery.of(context).size.height * 0.15,
                  height: MediaQuery.of(context).size.height * 0.15,
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                ),
              if (pokemon.urlImage == null)
                Image.asset(
                  'assets/generations/generation1/001.png',
                  width: MediaQuery.of(context).size.height * 0.15,
                  height: MediaQuery.of(context).size.height * 0.15,
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                ),
            ],
          ),
        ],
      ),
    );
  }

  Color colorByType() {
    switch (pokemon.types[0].name) {
      case 'Bug':
        return AppStyles.bugType;

      case "Dark":
        return AppStyles.darkType;

      case "Dragon":
        return AppStyles.dragonType;

      case "Electric":
        return AppStyles.electricType;

      case "Fairy":
        return AppStyles.fairyType;

      case 'Fire':
        return AppStyles.fireType;

      case "Flying":
        return AppStyles.flyingType;

      case "Fighting":
        return AppStyles.fightingType;

      case "Ghost":
        return AppStyles.ghostType;

      case 'Grass':
        return AppStyles.grassType;

      case 'Ground':
        return AppStyles.groundType;

      case "Ice":
        return AppStyles.iceType;

      case "Poison":
        return AppStyles.poisonType;

      case "Psychic":
        return AppStyles.psychicType;

      case "Rock":
        return AppStyles.rockType;

      case "Steel":
        return AppStyles.steelType;

      case 'Water':
        return AppStyles.waterType;

      default:
        return AppStyles.normalType;
    }
  }

  Color badgeBackground(String slotType) {
    switch (slotType) {
      case 'Bug':
        return AppStyles.bugBackgroundType;

      case "Dark":
        return AppStyles.darkBackgroundType;

      case "Dragon":
        return AppStyles.dragonBackgroundType;

      case "Electric":
        return AppStyles.electricBackgroundType;

      case "Fairy":
        return AppStyles.fairyBackgroundType;

      case 'Fire':
        return AppStyles.fireBackgroundType;

      case "Flying":
        return AppStyles.flyingBackgroundType;

      case "Fighting":
        return AppStyles.fightingBackgroundType;

      case "Ghost":
        return AppStyles.ghostBackgroundType;

      case 'Grass':
        return AppStyles.grassBackgroundType;

      case 'Ground':
        return AppStyles.groundBackgroundType;

      case "Ice":
        return AppStyles.iceBackgroundType;

      case "Poison":
        return AppStyles.poisonBackgroundType;

      case "Psychic":
        return AppStyles.psychicBackgroundType;

      case "Rock":
        return AppStyles.rockBackgroundType;

      case "Steel":
        return AppStyles.steelBackgroundType;

      case 'Water':
        return AppStyles.waterBackgroundType;

      default:
        return AppStyles.normalBackgroundType;
    }
  }

  String iconByType(String slotType) {
    return slotType.toLowerCase();
  }
}
