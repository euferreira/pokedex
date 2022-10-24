import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:pokedex/app/module/pokemon/application/profile.controller.dart';
import 'package:pokedex/app/shared/theme/app.styles.dart';

class ProfilePage extends GetView<ProfileController> {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          final maxHeight = constraints.maxHeight;
          final maxWidth = constraints.maxWidth;

          return SingleChildScrollView(
            child: Stack(
              children: [
                Container(
                  height: maxHeight * 0.47,
                  width: maxWidth,
                  decoration: const BoxDecoration(
                    color: AppStyles.grassBackgroundType,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  child: SafeArea(
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                SvgPicture.asset(
                                  "assets/patterns/pokeball.svg",
                                  color: AppStyles.white1000.withOpacity(.3),
                                ),
                                Text(
                                  "About",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(
                                    color: AppStyles.white1000,
                                  ),
                                ),
                              ],
                            ),
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                SvgPicture.asset(
                                  "assets/patterns/pokeball.svg",
                                  color: AppStyles.white1000.withOpacity(.3),
                                ),
                                Text(
                                  "Stats",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(
                                    color: AppStyles.white1000,
                                  ),
                                ),
                              ],
                            ),
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                SvgPicture.asset(
                                  "assets/patterns/pokeball.svg",
                                  color: AppStyles.white1000.withOpacity(.3),
                                ),
                                Text(
                                  "Evolution",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(
                                    color: AppStyles.white1000,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "BULBASAUR",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(
                                foreground: Paint()
                                  ..style = PaintingStyle.stroke
                                  ..strokeWidth = 1
                                  ..color =
                                  AppStyles.white1000.withOpacity(.3),
                              ),
                              overflow: TextOverflow.fade,
                              maxLines: 1,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: maxWidth * 0.05,
                                ),
                                Stack(
                                  children: [
                                    SvgPicture.asset(
                                      "assets/patterns/circle.svg",
                                      color:
                                      AppStyles.white1000.withOpacity(.3),
                                    ),
                                    Image.asset(
                                      "assets/generations/generation1/001.png",
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: maxWidth * 0.05,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "#001",
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium,
                                    ),
                                    Text(
                                      "Bulbasaur",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall!
                                          .copyWith(
                                        color: AppStyles.white1000,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(10),
                                            color: AppStyles.grassType,
                                          ),
                                          padding: const EdgeInsets.all(6),
                                          child: Row(
                                            children: [
                                              SvgPicture.asset(
                                                'assets/types/grass.svg',
                                                color: AppStyles.white1000,
                                                width: 13,
                                                height: 13,
                                              ),
                                              const SizedBox(width: 5),
                                              Text(
                                                "Grass",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .labelSmall!
                                                    .copyWith(
                                                  color:
                                                  AppStyles.white1000,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        /*if (pokemon.types.length > 1) ...[
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
                                    ],*/
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SafeArea(
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () => Get.back(),
                        icon: Icon(
                          Icons.arrow_back,
                          color: Theme.of(context).appBarTheme.iconTheme!.color,
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
