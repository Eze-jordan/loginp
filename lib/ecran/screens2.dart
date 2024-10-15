import 'package:flutter/material.dart';

class Screens2 extends StatelessWidget {
  const Screens2({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/image2.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
