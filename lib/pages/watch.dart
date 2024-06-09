import 'package:flutter/material.dart';

class ScreenWatch extends StatelessWidget {
  const ScreenWatch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Flutter Demo Home Page'),
      ),
      body: const Center(
        child: Text("watch"),
      ),
    );
  }
}
