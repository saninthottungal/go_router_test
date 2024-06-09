import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:product_manager/pages/add_item.dart';
import 'package:product_manager/providers/item_provider.dart';
import 'package:product_manager/routes/routes.dart';

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
