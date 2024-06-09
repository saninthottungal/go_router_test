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
            onPressed: () {
              context.goNamed(
                RouteConstants.mobile,
                pathParameters: {'title': 'mobiles'},
              );
            },
            child: const Text("mobiles"),
          ),
          TextButton(
            onPressed: () {
              context.goNamed(
                RouteConstants.speaker,
                pathParameters: {'title': 'speakers'},
              );
            },
            child: const Text("speakers"),
          ),
          TextButton(
            onPressed: () {
              context.goNamed(
                RouteConstants.watch,
                pathParameters: {'title': 'watches'},
              );
            },
            child: const Text("watches"),
          ),
          TextButton(
            onPressed: () {
              context.goNamed(
                RouteConstants.headset,
                pathParameters: {'title': 'headsets'},
              );
            },
            child: const Text("headsets"),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text("Add Item"),
        onPressed: () {
          context.pushNamed(RouteConstants.addItem);
        },
      ),
    );
  }
}
