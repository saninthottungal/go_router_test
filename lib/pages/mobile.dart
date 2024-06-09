import 'package:flutter/material.dart';

class ScreenMobile extends StatelessWidget {
  const ScreenMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Mobiles'),
      ),
      body: const Center(
        child: Text("mobiles"),
      ),
    );
  }
}
