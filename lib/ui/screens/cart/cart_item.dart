import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tiny_store/bloc/cart/cart_bloc.dart';

import 'package:tiny_store/core/models/product.model.dart';

class CartItem extends StatelessWidget {
  final Product product;

  const CartItem({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 80,
      child: Row(
        children: [
          InkWell(
            child: const Icon(
              Icons.delete,
              color: Colors.black54,
            ),
            onTap: () => _removeProductFromCart(context),
          ),
          Image.network(
            product.imageUrl,
          ),
          Flexible(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 130,
                    child: Text(
                      product.name,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    product.price.toString(),
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  _removeProductFromCart(BuildContext context) {
    return context.read<CartBloc>().add(CartEvent.productRemoved(product));
  }
}
