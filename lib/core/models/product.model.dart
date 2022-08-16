import 'package:freezed_annotation/freezed_annotation.dart';
part 'product.model.freezed.dart';
part 'product.model.g.dart';

@freezed
class Product with _$Product {
  const factory Product({
    required String name,
    required String imageUrl,
    required String description,
    required double price,
    required double rating,
  }) = _Product;

  factory Product.fromJson(Map<String, Object?> json) =>
      _$ProductFromJson(json);
}
