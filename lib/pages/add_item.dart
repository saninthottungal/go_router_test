import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:product_manager/models/item_model/item_model.dart';
import 'package:product_manager/providers/item_provider.dart';

class ScreenAddItem extends HookConsumerWidget {
  const ScreenAddItem({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final itemController = useTextEditingController();
    final shopItemNotifier = useState(ShopItems.speaker);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Item"),
      ),
      body: Column(
        children: [
          TextField(
            controller: itemController,
          ),
          DropdownButton(
            value: shopItemNotifier.value,
            items: ShopItems.values
                .map((value) => DropdownMenuItem(
                      value: value,
                      child: Text(value.name),
                    ))
                .toList(),
            onChanged: (value) {
              shopItemNotifier.value = value ?? ShopItems.speaker;
            },
          ),
          const SizedBox(height: 25),
          ElevatedButton(
            onPressed: () {
              if (itemController.text.isEmpty || itemController.text == '') {
                return;
              }
              final title = itemController.text;
              final itemType = shopItemNotifier.value;
              final itemModel =
                  ItemModel.create(title: title, itemType: itemType);
              ref.read(itemsProvider.notifier).addItem(itemModel);

              context.pop();
            },
            child: const Text("Add item"),
          )
        ],
      ),
    );
  }
}

enum ShopItems {
  speaker,
  headset,
  mobile,
  watch,
}
