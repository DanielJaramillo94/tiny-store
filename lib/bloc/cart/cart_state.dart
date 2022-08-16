part of 'cart_bloc.dart';

@freezed
class CartState with _$CartState {
  const factory CartState.data([
    @Default([]) List<Product> products,
  ]) = _Data;

  factory CartState.fromJson(Map<String, Object?> json) =>
      _$CartStateFromJson(json);
}
