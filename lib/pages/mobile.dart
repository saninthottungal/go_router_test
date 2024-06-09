import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:product_manager/pages/add_item.dart';
import 'package:product_manager/providers/item_provider.dart';

class ScreenMobile extends ConsumerWidget {
  const ScreenMobile({super.key, this.title});
  final String? title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final items = ref.watch(itemsProvider);
    final mobiles = items.where((model) => model.itemType == ShopItems.mobile);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Mobiles'),
      ),
      body: mobiles.isEmpty
          ? const Center(
              child: Text("No items in stock"),
            )
          : ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    child: Text(
                      (index + 1).toString(),
                    ),
                  ),
                  title: Text(mobiles.elementAt(index).title),
                );
              },
              itemCount: mobiles.length,
            ),
    );
  }
}
