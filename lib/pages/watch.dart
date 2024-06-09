import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:product_manager/pages/add_item.dart';
import 'package:product_manager/providers/item_provider.dart';

class ScreenWatch extends ConsumerWidget {
  const ScreenWatch({super.key, this.title});
  final String? title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final items = ref.watch(itemsProvider);
    final watches =
        items.where((element) => element.itemType == ShopItems.watch);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Watches'),
      ),
      body: watches.isEmpty
          ? const Center(
              child: Text("No watches in stock"),
            )
          : ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    child: Text(index.toString()),
                  ),
                  title: Text(watches.elementAt(index).title),
                );
              },
              itemCount: watches.length,
            ),
    );
  }
}
