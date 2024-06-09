import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:product_manager/routes/routes.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Home'),
      ),
      body: Column(
        children: [
          TextButton(
            onPressed: () {},
            child: const Text("mobiles"),
          ),
          TextButton(
            onPressed: () {},
            child: const Text("speakers"),
          ),
          TextButton(
            onPressed: () {},
            child: const Text("watches"),
          ),
          TextButton(
            onPressed: () {},
            child: const Text("headsets"),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text("Add Item"),
        onPressed: () {
          context.goNamed(RouteConstants.addItem);
        },
      ),
    );
  }
}
