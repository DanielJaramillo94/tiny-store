import 'package:tiny_store/core/models/product.model.dart';

class ProductsApiClient {
  Future<List<Product>> getProducts() async {
    return Future.delayed(
      const Duration(seconds: 2),
      () => _products,
    );
  }
}

List<Product> _products = const [
  Product(
    name: 'Sillón naranja',
    description: 'Lorem Ipsum Dorma Torda',
    imageUrl:
        'https://as2.ftcdn.net/v2/jpg/03/03/92/01/1000_F_303920112_Qg6w8w2Brjnqex7AGJpsZlaI8IWa1lzH.jpg',
    price: 250000,
    rating: 4.3,
  ),
  Product(
    name: 'Silla verde clásica',
    description: 'Lorem Ipsum Dorma Torda',
    imageUrl:
        'https://as1.ftcdn.net/v2/jpg/02/98/83/02/1000_F_298830220_lHqS0oOJMOZ8F8ld7z7ZeAdZDv1Gt02U.jpg',
    price: 300000,
    rating: 4.7,
  ),
  Product(
    name: 'Sillón gris concepto circular',
    description: 'Lorem Ipsum Dorma Torda',
    imageUrl:
        'https://as1.ftcdn.net/v2/jpg/04/23/22/30/1000_F_423223088_K7LtjyVB6Ggvj2eXCYgH4wifwr567hjI.jpg',
    price: 320000,
    rating: 4.2,
  ),
  Product(
    name: 'Silla mimbre café',
    description: 'Lorem Ipsum Dorma Torda',
    imageUrl:
        'https://as1.ftcdn.net/v2/jpg/04/22/49/48/1000_F_422494801_4ceq4TyK4YoS44vyinUr6r5ZGP0eFD59.jpg',
    price: 245000,
    rating: 4.4,
  ),
  Product(
    name: 'Silla mimbre café sencilla',
    description: 'Lorem Ipsum Dorma Torda',
    imageUrl:
        'https://as1.ftcdn.net/v2/jpg/04/21/00/38/1000_F_421003867_svtctEEgBbwYK4K6ZqAvXnVMNC7Fw4ye.jpg',
    price: 230000,
    rating: 4.3,
  ),
  Product(
    name: 'Sillón roja',
    description: 'Lorem Ipsum Dorma Torda',
    imageUrl:
        'https://as1.ftcdn.net/v2/jpg/02/96/08/60/1000_F_296086068_upDivS8gcX1QPPQ3tevdWQd8aHPdTZPE.jpg',
    price: 370000,
    rating: 4.3,
  ),
];
