import 'package:demo_getx/controllers/global_controller.dart';
import 'package:demo_getx/models/product.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductList extends StatelessWidget {
  const ProductList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<GlobalController>(
      builder: (_) => ListView.builder(
        itemBuilder: (__, index) {
          final Product product = _.products[index];
          return ListTile(
            title: Text(product.name),
            subtitle: Text("USD ${product.price}"),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite),
            ),
          );
        },
        itemCount: _.products.length,
      ),
    );
  }
}
