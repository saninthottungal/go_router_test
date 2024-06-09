import 'package:flutter/material.dart';

class ScreenSpeaker extends StatelessWidget {
  const ScreenSpeaker({super.key, this.title});
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Speakers'),
      ),
      body: const Center(
        child: Text("speaker"),
      ),
    );
  }
}
