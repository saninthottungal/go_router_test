import 'package:flutter/material.dart';

class ScreenHeadset extends StatelessWidget {
  const ScreenHeadset({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Headsets'),
      ),
      body: const Center(
        child: Text("headset"),
      ),
    );
  }
}
