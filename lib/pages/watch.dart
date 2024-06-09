import 'package:flutter/material.dart';

class ScreenWatch extends StatelessWidget {
  const ScreenWatch({super.key, this.title});
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Watches'),
      ),
      body: const Center(
        child: Text("watch"),
      ),
    );
  }
}
