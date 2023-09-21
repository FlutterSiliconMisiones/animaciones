import 'package:animaciones/hero_animation_page2.dart';
import 'package:animaciones/photo_hero.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

class HeroAnimationPage1 extends StatelessWidget {
  const HeroAnimationPage1({super.key});

  @override
  Widget build(BuildContext context) {
    timeDilation = 10.0; // 1.0 means normal animation speed.

    return Scaffold(
      appBar: AppBar(
        title: const Text('HeroAnimationPage1'),
      ),
      body: Center(
        child: PhotoHero(
          photo: 'assets/flippers-alpha.png',
          width: 300,
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute<void>(
                builder: (context) => HeroAnimationPage2(),
              ),
            );
          },
        ),
      ),
    );
  }
}
