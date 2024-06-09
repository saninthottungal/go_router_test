import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:product_manager/pages/add_item.dart';
import 'package:uuid/uuid.dart';
part 'item_model.freezed.dart';

const _uuid = Uuid();

@freezed
class ItemModel with _$ItemModel {
  const factory ItemModel({
    required String uid,
    required String title,
    required ShopItems itemType,
  }) = _ItemModel;

  factory ItemModel.create({
    required String title,
    required ShopItems itemType,
  }) {
    return ItemModel(
      uid: _uuid.v4(),
      title: title,
      itemType: itemType,
    );
  }
}
