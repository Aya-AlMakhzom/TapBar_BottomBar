import 'package:flutter/material.dart';

import '../../models/Product.dart';
import '../constants.dart';
class ItemCard extends StatelessWidget{
  final Product product;
  Function()?ontap;
   ItemCard({ Key? key , required this.product,required this.ontap}):super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:ontap,
      child:Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(kDefaultPaddin),
          height: 180,
          width: 160,
          decoration: BoxDecoration(
            color:product.color,
            borderRadius: BorderRadius.circular(16),
          ),
          child:Hero(
            tag: "${product.id}",
          child: Image.asset(product.image),
        ),),
        Padding(
          padding: EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
          child: Text(
            product.title,
            style: TextStyle(
              color: kTextLightColor,
            ),
          ),),
        Text("  \$${product.Price}",style: TextStyle(fontWeight: FontWeight.bold),),
      ],
    ),
    );
  }
}
