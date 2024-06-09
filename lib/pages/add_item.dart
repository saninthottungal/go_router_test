import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ScreenAddItem extends HookWidget {
  const ScreenAddItem({super.key});

  @override
  Widget build(BuildContext context) {
    final itemController = useTextEditingController();
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
            hint: const Text("Select item"),
            items: ShopItems.values
                .map((value) => DropdownMenuItem(
                      value: value,
                      child: Text(value.name),
                    ))
                .toList(),
            onChanged: (value) {},
          ),
          const SizedBox(height: 25),
          ElevatedButton(
            onPressed: () {},
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
