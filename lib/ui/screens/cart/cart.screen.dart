import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tiny_store/bloc/cart/cart_bloc.dart';
import 'package:tiny_store/ui/screens/cart/cart_item.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, catalogState) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            leading: const BackButton(color: Colors.black54),
            backgroundColor: Colors.white,
            elevation: 0,
            title: const Text(
              'Cart',
              style: TextStyle(color: Colors.black54),
            ),
          ),
          body: catalogState.when(
            data: (products) => products.isEmpty
                ? Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'El carrito se encuentra vacío',
                          style: TextStyle(fontSize: 20, color: Colors.black54),
                        ),
                        SizedBox(height: 10),
                        Text(
                          ':(',
                          style: TextStyle(fontSize: 20, color: Colors.black54),
                        ),
                      ],
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: SingleChildScrollView(
                      child: Column(
                          children: List.generate(
                        products.length,
                        (index) => CartItem(product: products[index]),
                      )),
                    ),
                  ),
          ),
        );
      },
    );
  }
}
