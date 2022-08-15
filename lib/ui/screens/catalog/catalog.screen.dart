import 'package:flutter/material.dart';
import 'package:tiny_store/core/models/product.model.dart';
import 'package:tiny_store/ui/screens/catalog/product_card.dart';
import 'package:tiny_store/ui/widgets/shopping_bag.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Catalog',
          style: TextStyle(color: Colors.black54),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: ShoppingBag(),
          ),
        ],
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(8.0),
        itemCount: 20,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 3 / 4),
        itemBuilder: (context, index) {
          return const ProductCard(
            product: Product(
              name: 'Sofá',
              description: 'Lorem Ipsum Dorma Torda',
              imageUrl:
                  'https://as2.ftcdn.net/v2/jpg/03/03/92/01/1000_F_303920112_Qg6w8w2Brjnqex7AGJpsZlaI8IWa1lzH.jpg',
              price: 250000,
              rating: 4.5,
            ),
          );
        },
      ),
    );
  }
}
