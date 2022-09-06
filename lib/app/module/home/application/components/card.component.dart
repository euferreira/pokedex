import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pokedex/app/shared/theme/app.styles.dart';

class CardComponent extends StatelessWidget {
  final double maxWidth;
  final double maxHeight;

  const CardComponent({
    Key? key,
    required this.maxHeight,
    required this.maxWidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return pokeCard(context);
  }

  Stack pokeCard(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: maxHeight * 0.15,
          margin: const EdgeInsets.only(bottom: 35),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppStyles.grassType,
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
                      '#001',
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                    Text(
                      'Bulbasaur',
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                            color: AppStyles.white1000,
                          ),
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppStyles.grassBackgroundType,
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
                              Text('Grass',
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelSmall!
                                      .copyWith(
                                        color: AppStyles.white1000,
                                      )),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppStyles.grassBackgroundType,
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
                                'Grass',
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
    );
  }
}
