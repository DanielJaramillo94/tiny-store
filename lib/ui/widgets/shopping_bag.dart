import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tiny_store/bloc/cart/cart_bloc.dart';

import 'package:tiny_store/ui/commons.dart';

class ShoppingBag extends StatelessWidget {
  final double width;

  const ShoppingBag({
    super.key,
    this.width = 40,
  });

  @override
  Widget build(BuildContext context) {
    final cartBloc = context.watch<CartBloc>();
    return SizedBox(
      width: width,
      child: LayoutBuilder(
        builder: (context, constraints) {
          double availableWidth = constraints.biggest.width;
          return Stack(
            fit: StackFit.passthrough,
            children: [
              Icon(
                Icons.shopping_bag_outlined,
                size: availableWidth / 1.2,
                color: Colors.black54,
              ),
              Align(
                alignment: const Alignment(1, -0.3),
                child: CircleAvatar(
                  radius: availableWidth / 3.8,
                  backgroundColor: baseColor[800],
                  child: Text(
                    cartBloc.state.when(
                      empty: () => '0',
                      data: (products) => products.length.toString(),
                    ),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: availableWidth / 3.5,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
