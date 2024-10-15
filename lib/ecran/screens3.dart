import 'package:flutter/material.dart';

class Screens3 extends StatelessWidget {
  const Screens3({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/image3.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
