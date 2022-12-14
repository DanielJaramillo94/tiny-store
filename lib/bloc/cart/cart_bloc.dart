import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:tiny_store/core/models/product.model.dart';

part 'cart_event.dart';
part 'cart_state.dart';
part 'cart_bloc.freezed.dart';
part 'cart_bloc.g.dart';

class CartBloc extends HydratedBloc<CartEvent, CartState> {
  CartBloc() : super(const CartState.data([])) {
    on<_ProductAdded>(_onProductAdded);
    on<_ProductRemoved>(_onProductRemoved);
  }

  void _onProductAdded(_ProductAdded productAdded, Emitter<CartState> emit) {
    Product product = productAdded.product;
    var currentProducts = state.when(
      data: (products) => products,
    );
    if (currentProducts.contains(product)) {
      return;
    }
    emit(
      state.when(
        data: (products) => CartState.data([...products, product]),
      ),
    );
  }

  void _onProductRemoved(
      _ProductRemoved productAdded, Emitter<CartState> emit) {
    Product product = productAdded.product;
    emit(
      state.when(
        data: (products) => CartState.data([...products]..remove(product)),
      ),
    );
  }

  @override
  CartState? fromJson(Map<String, dynamic> json) => CartState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(CartState state) => state.toJson();
}
