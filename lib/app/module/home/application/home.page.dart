import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:pokedex/app/module/home/application/components/filter.component.dart';
import 'package:pokedex/app/module/home/application/home.controller.dart';

import 'components/card.component.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Scaffold(
            body: SingleChildScrollView(
              child: Stack(
                children: [
                  FilterComponent(
                    maxWidth: constraints.maxWidth,
                    maxHeight: constraints.maxHeight,
                  ),
                  SizedBox(
                    height: constraints.maxHeight * 0.1,
                  ),
                  SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              IconButton(
                                icon: SvgPicture.asset(
                                  'assets/icons/generation.svg',
                                ),
                                onPressed: () {},
                              ),
                              IconButton(
                                icon: SvgPicture.asset(
                                  'assets/icons/sort.svg',
                                ),
                                onPressed: () {},
                              ),
                              IconButton(
                                icon: SvgPicture.asset(
                                  'assets/icons/filter.svg',
                                ),
                                onPressed: () {},
                              ),
                            ],
                          ),
                          SizedBox(
                            height: constraints.maxHeight * 0.08,
                          ),
                          Text(
                            'Pokedex',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          Text(
                            'Search for Pokémon by name or using the National Pokédex number.',
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                          SizedBox(
                            height: constraints.maxHeight * 0.03,
                          ),
                          TextFormField(
                            style: Theme.of(context).textTheme.labelLarge,
                            decoration: InputDecoration(
                              hintText: 'Search Pokémon',
                              hintStyle: Theme.of(context).textTheme.labelLarge,
                              prefixIcon: const Icon(Icons.search),
                            ),
                          ),
                          SizedBox(
                            height: constraints.maxHeight * 0.03,
                          ),
                          SizedBox(
                            height: constraints.maxHeight * 0.6,
                            child: SingleChildScrollView(
                              physics: const BouncingScrollPhysics(),
                              child: Column(
                                children: List.generate(
                                  50,
                                  (index) => CardComponent(
                                    maxHeight: constraints.maxHeight,
                                    maxWidth: constraints.maxWidth,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
