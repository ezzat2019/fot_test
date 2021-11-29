import 'package:flutter/material.dart';
import 'package:fot_test/data/add/product_model.dart';
class ProductDetaitlsScreen extends StatelessWidget {
  final ProductModel productModel;
  const ProductDetaitlsScreen(this.productModel,{Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [

            Positioned(
                top: 50,
                left:30,
                child: Text("name : ${productModel.name}")),

            Container(width: double.infinity,
                height: double.infinity,child: Image.network(productModel.imgUrl),)

          ],
        ));
  }
}
