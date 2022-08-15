import 'package:tiny_store/core/data/products_api_client.dart';
import 'package:tiny_store/core/models/product.model.dart';

class ProductsRepository {
  ProductsRepository({required ProductsApiClient productsApiClient})
      : _productsApiClient = productsApiClient;

  final ProductsApiClient _productsApiClient;

  Future<List<Product>> getWeather(String city) async {
    return await _productsApiClient.getProducts();
  }
}
