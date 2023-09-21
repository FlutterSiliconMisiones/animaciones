import 'package:flutter/material.dart';

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

class _MoverAlgoState extends State<MoverAlgo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.green,
      ),
    );
  }
}
