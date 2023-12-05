import 'package:flutter/material.dart';

import '../../models/Product.dart';
import '../constants.dart';
class ProductTitleWithImage extends StatelessWidget{
  const ProductTitleWithImage({
    required this.product,});
  final Product product;

  @override
  Widget build(BuildContext context) {
    return                 Padding(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [Text("Aristocrtic Hand Bag",style: TextStyle(color: Colors.white),),
          Text(
            product.title,
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: Colors.white,fontWeight: FontWeight.bold),
          ),
          SizedBox(height: kDefaultPaddin,),
          Row(
            children: [
              RichText(text:TextSpan(
                children: [
                  TextSpan(text:"Price\n")  ,
                  TextSpan(
                      text:"\$${product.Price}",
                      style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: Colors.white,fontWeight: FontWeight.bold)
                  )
                ],
              )),
              SizedBox(width: kDefaultPaddin,),
              Expanded(
                child:Hero(
                tag: "${product.id}",
                child: Image.asset(product.image,fit: BoxFit.fill,),),),
            ],
          )
        ],
      ),);
  }

}