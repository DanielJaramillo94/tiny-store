part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.productAdded(Product product) = _ProductAdded;
  const factory CartEvent.productRemoved(Product product) = _ProductRemoved;
}
