import 'package:flutter/material.dart';

import '../data/product_data.dart';

import '../widgets/product_item.dart';

class ProductsOverview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'MyShop',
        ),
      ),
      body: ProductsGrid(),
    );
  }
}
