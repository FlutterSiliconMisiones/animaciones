import 'package:animaciones/algo.dart';
import 'package:flutter/material.dart';
import 'dart:math' as Math;

class MoverAlgoPage extends StatelessWidget {
  const MoverAlgoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MoverAlgo(),
      ),
    );
  }
}

class MoverAlgo extends StatefulWidget {
  const MoverAlgo({super.key});

  @override
  State<MoverAlgo> createState() => _MoverAlgoState();
}

class _MoverAlgoState extends State<MoverAlgo>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> rotation;

  @override
  void initState() {
    controller = AnimationController(
      // vsync que se ejecute a los FPS necesarios
      vsync: this,
      duration: Duration(
        seconds: 4,
      ),
    );

    rotation = Tween(
      begin: 0.0,
      end: 2 * Math.pi,
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: Curves.easeOut,
      ),
    );

    /// Si se ha terminado la app le damos reset al controller para dejarlo
    controller.addListener(() {
      // print('Status: ${ controller.status }');
      if (controller.status == AnimationStatus.completed) {
        // controller.repeat();
        // controller.reverse();
        controller.reset();
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    controller.forward();
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        return Transform.rotate(
          angle: rotation.value,
          child: Algo(),
        );
      },
      child: Algo(),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
