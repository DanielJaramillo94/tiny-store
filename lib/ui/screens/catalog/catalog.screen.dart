import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:tiny_store/bloc/catalog/catalog_cubit.dart';
import 'package:tiny_store/ui/screens/catalog/product_card.dart';
import 'package:tiny_store/ui/widgets/shopping_bag.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CatalogCubit, CatalogState>(
        builder: (context, catalogState) {
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
        body: catalogState.when(
          loading: () => const Center(child: CircularProgressIndicator()),
          loaded: (products) => GridView.builder(
            padding: const EdgeInsets.all(8.0),
            itemCount: products.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 3 / 4),
            itemBuilder: (context, index) {
              return ProductCard(
                product: products[index],
              );
            },
          ),
        ),
      );
    });
  }
}
