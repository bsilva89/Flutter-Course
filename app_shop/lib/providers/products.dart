import 'package:flutter/material.dart';

import '../models/product.dart';

import '../data/product_data.dart';

class Products with ChangeNotifier {
  List<Product> _items = loadedProducts;

  List<Product> get items {
    return [..._items];
  }

  void addProduct() {
    notifyListeners();
  }
}
