import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tiny_store/core/data/products_api_client.dart';
import 'package:tiny_store/core/models/product.model.dart';

part 'catalog_state.dart';
part 'catalog_cubit.freezed.dart';

class CatalogCubit extends Cubit<CatalogState> {
  CatalogCubit({required ProductsApiClient productsApiClient})
      : _productsApiClient = productsApiClient,
        super(const _Loading());

  final ProductsApiClient _productsApiClient;

  void start() async {
    var products = await _productsApiClient.getProducts();
    emit(_Loaded(products));
  }
}
