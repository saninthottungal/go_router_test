import 'package:flutter/material.dart';

class ScreenHeadset extends StatelessWidget {
  const ScreenHeadset({super.key, required this.title});
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title ?? 'No Headsets'),
      ),
      body: const Center(
        child: Text("headset"),
      ),
    );
  }
}
