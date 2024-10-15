import 'package:flutter/material.dart';

class Screens1 extends StatelessWidget {
  const Screens1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/image1.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
