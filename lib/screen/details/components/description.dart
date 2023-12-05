import 'package:flutter/material.dart';

import '../../../models/Product.dart';
import '../../constants.dart';
class Description extends StatelessWidget{
  const Description({required this.product});
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: Text(
        style: TextStyle(height:1.5 ),
        product.description,),
    );
  }

}