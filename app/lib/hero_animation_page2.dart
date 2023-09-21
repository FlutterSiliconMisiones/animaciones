import 'package:animaciones/photo_hero.dart';
import 'package:flutter/material.dart';

class HeroAnimationPage2 extends StatelessWidget {
  const HeroAnimationPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HeroAnimationPage2'),
      ),
      body: Container(
        // Set background to blue to emphasize that it's a new route.
        color: Colors.lightBlueAccent,
        padding: const EdgeInsets.all(16),
        alignment: Alignment.topLeft,
        child: PhotoHero(
          photo: 'assets/flippers-alpha.png',
          width: 100,
          onTap: () {
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }
}
