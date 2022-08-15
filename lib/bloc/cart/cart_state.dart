part of 'cart_bloc.dart';

@freezed
class CartState with _$CartState {
  const factory CartState.empty() = _Empty;
  const factory CartState.data([
    @Default([]) List<Product> products,
  ]) = _Data;
}