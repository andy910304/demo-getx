import 'dart:convert';

import 'package:demo_getx/models/product.dart';
import 'package:flutter/services.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class GlobalController extends GetxController {
  List<Product> _products = [];
  List<Product> get products => _products;

  @override
  void onInit() {
    super.onInit();
    _loadProducts();
  }

  Future<void> _loadProducts() async {
    final String productString =
        await rootBundle.loadString('assets/products.json');

    this._products = (jsonDecode(productString) as List)
        .map((e) => Product.fromJson(e))
        .toList();

    print("GLOBAL ON INIT.......................");

    update(['products']);
  }
}
