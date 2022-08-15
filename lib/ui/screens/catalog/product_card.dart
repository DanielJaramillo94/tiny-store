import 'package:flutter/material.dart';
import 'package:tiny_store/core/models/product.model.dart';
import 'package:tiny_store/ui/commons.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20,
      shadowColor: Colors.black54,
      child: Container(
        color: Colors.white,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.network(
              product.imageUrl,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      flex: 7,
                      fit: FlexFit.tight,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 8.0,
                          left: 8.0,
                        ),
                        child: SizedBox(
                          height: 35,
                          child: Text(
                            product.name,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 8.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.star,
                            size: 18,
                            color: Colors.yellow[800],
                          ),
                          const SizedBox(width: 1),
                          Text(
                            '(${product.rating})',
                            style: const TextStyle(
                              color: Colors.black45,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Flexible(
                      flex: 4,
                      fit: FlexFit.tight,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 8.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              product.description,
                              style: const TextStyle(
                                fontSize: 10,
                                color: Colors.black45,
                              ),
                            ),
                            Text(
                              product.price.toString(),
                              style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          print('Element clicked');
                        },
                        child: CircleAvatar(
                          radius: 15,
                          backgroundColor: baseColor[800],
                          child: const Icon(
                            Icons.add,
                            size: 18,
                            color: Colors.white70,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
