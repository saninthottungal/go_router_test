import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:product_manager/pages/add_item.dart';
import 'package:product_manager/providers/item_provider.dart';

class ScreenHeadset extends ConsumerWidget {
  const ScreenHeadset({super.key, required this.title});
  final String? title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final items = ref.watch(itemsProvider);
    final headsets =
        items.where((element) => element.itemType == ShopItems.headset);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title ?? 'No Headsets'),
      ),
      body: headsets.isEmpty
          ? const Center(
              child: Text("No watches in stock"),
            )
          : ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    child: Text(index.toString()),
                  ),
                  title: Text(headsets.elementAt(index).title),
                );
              },
              itemCount: headsets.length,
            ),
    );
  }
}
