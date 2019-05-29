import 'package:flutter/material.dart';

import 'model/products_repository.dart';
import 'model/product.dart';
import 'supplemental/asymmetric_view.dart';

class HomePage extends StatelessWidget {
  final Category category;
  const HomePage({this.category: Category.all});

  @override
  Widget build(BuildContext context) {
    return AsymmetricView(products: ProductsRepository.loadProducts(category));
    // TODO: Pass Category variable to AsymmetricView (104)
    //   return Scaffold(
    //     appBar: AppBar(
    //       brightness: Brightness.light,
    //       leading: IconButton(
    //         icon: Icon(Icons.menu),
    //         onPressed: () {
    //           print('Menu button');
    //         },
    //       ),
    //       title: Text('SHRINE'),
    //       actions: <Widget>[
    //         IconButton(
    //           icon: Icon(Icons.search),
    //           onPressed: () {
    //             print('Search button');
    //           },
    //         ),
    //         IconButton(
    //           icon: Icon(Icons.tune),
    //           onPressed: () {
    //             print('Filter button');
    //           },
    //         ),
    //       ],
    //     ),
    //     body: AsymmetricView(
    //         products: ProductsRepository.loadProducts(Category.all)),
    //   );
    // }
  }
}
