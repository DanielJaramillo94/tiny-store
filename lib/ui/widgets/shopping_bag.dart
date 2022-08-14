import 'package:flutter/material.dart';
import 'package:tiny_store/ui/commons.dart';

class ShoppingBag extends StatelessWidget {
  final double width;

  const ShoppingBag({
    super.key,
    this.width = 40,
  });

  @override
  Widget build(BuildContext context) {
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
                size: availableWidth,
                color: Colors.black54,
              ),
              Align(
                alignment: const Alignment(1, -0.2),
                child: CircleAvatar(
                  radius: availableWidth / 3.8,
                  backgroundColor: baseColor[800],
                  child: Text(
                    '8',
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
