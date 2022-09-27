import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokedex/app/module/pokemon/application/profile.controller.dart';

class ProfilePage extends GetView<ProfileController> {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Pokemon'),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  height: 100,
                  color: Colors.red,
                ),
                Container(
                  height: 100,
                  color: Colors.green,
                ),
                Container(
                  height: 100,
                  color: Colors.blue,
                ),
                Container(
                  height: 100,
                  color: Colors.yellow,
                ),
                Container(
                  height: 100,
                  color: Colors.purple,
                ),
                Container(
                  height: 100,
                  color: Colors.orange,
                ),
                Container(
                  height: 100,
                  color: Colors.pink,
                ),
                Container(
                  height: 100,
                  color: Colors.brown,
                ),
                Container(
                  height: 100,
                  color: Colors.grey,
                ),
                Container(
                  height: 100,
                  color: Colors.black,
                ),
                Container(
                  height: 100,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
