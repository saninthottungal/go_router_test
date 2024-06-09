import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:product_manager/pages/add_item.dart';
import 'package:product_manager/pages/widgets/custom_item_widget.dart';
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
      body: const Column(
        children: [
          CustomItemWidget(
            itemType: ShopItems.mobile,
            title: 'mobiles',
          ),
          CustomItemWidget(
            itemType: ShopItems.speaker,
            title: 'speakers',
          ),
          CustomItemWidget(
            itemType: ShopItems.watch,
            title: 'Watches',
          ),
          CustomItemWidget(
            itemType: ShopItems.headset,
            title: 'Headsets',
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
