import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:product_manager/pages/add_item.dart';
import 'package:product_manager/providers/item_provider.dart';
import 'package:product_manager/routes/routes.dart';

class ScreenHome extends ConsumerWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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

class CustomItemWidget extends ConsumerWidget {
  const CustomItemWidget({
    super.key,
    required this.itemType,
    required this.title,
  });
  final String title;

  final ShopItems itemType;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final items = ref.watch(itemsProvider);
    return Row(
      children: [
        TextButton(
          onPressed: () {
            context.goNamed(
              RouteConstants.mobile,
              pathParameters: {'title': title},
            );
          },
          child: Text(title),
        ),
        Builder(
          builder: (context) {
            final count = items.fold(0, (previousValue, element) {
              if (element.itemType == itemType) {
                return ++previousValue;
              } else {
                return previousValue;
              }
            });
            return Text("($count)");
          },
        ),
      ],
    );
  }
}
