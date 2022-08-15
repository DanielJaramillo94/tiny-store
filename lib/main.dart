import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tiny_store/bloc/cart/cart_bloc.dart';
import 'package:tiny_store/bloc/catalog/catalog_cubit.dart';
import 'package:tiny_store/core/data/products_api_client.dart';
import 'package:tiny_store/ui/commons.dart';
import 'package:tiny_store/ui/screens/catalog/catalog.screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => CartBloc()),
        BlocProvider(
          create: (_) =>
              CatalogCubit(productsApiClient: ProductsApiClient())..start(),
        ),
      ],
      child: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: MaterialColor(0xFF221a7e, baseColor),
      ),
      home: const CatalogScreen(),
    );
  }
}
