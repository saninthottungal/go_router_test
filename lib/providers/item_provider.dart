import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:product_manager/models/item_model/item_model.dart';

final itemsProvider =
    NotifierProvider<ItemListNotifier, List<ItemModel>>(ItemListNotifier.new);

class ItemListNotifier extends Notifier<List<ItemModel>> {
  @override
  List<ItemModel> build() {
    return [];
  }

  void addItem(ItemModel model) {
    state = [...state, model];
  }
}
