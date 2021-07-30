import 'dart:convert';

import 'package:demo_getx/models/product.dart';
import 'package:flutter/services.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class GlobalController extends GetxController {
  List<Product> _products = [];

  //El mapa se utiliza para agregar los favoritos y contabilizarlos
  // en el AppBar
  Map<String, Product> _favorite = Map();
  Map<String, Product> get favorite => _favorite;

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

  onFavorite(int index, bool isFavorite) {
    Product product = _products[index];
    product.isFavorite = isFavorite;
    if (isFavorite) {
      this._favorite[product.name] = product;
    } else {
      this._favorite.remove(product.name);
    }
    update(['products', 'favorite']);
  }
}
