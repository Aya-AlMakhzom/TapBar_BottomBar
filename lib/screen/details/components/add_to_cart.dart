import 'package:flutter/material.dart';
import 'package:women/models/Product.dart';

import '../../constants.dart';
class AddToCart extends StatelessWidget{
  final Product product;

  const AddToCart({super.key, required this.product});
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: kDefaultPaddin),
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                border: Border.all(
                  color: product.color,
                )
            ),
            child: IconButton(onPressed: () {  }, icon: Icon(Icons.shopping_cart_outlined,color: product.color,),

            ),
          ),
          Expanded(child:
          SizedBox(
            height: 50,
            child:ElevatedButton(

                style: ElevatedButton.styleFrom(backgroundColor: product.color),
                // color:product.color,
                onPressed: () {  },
                child: Text(" Buy Now",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,),)
            ),),),

        ],
      ),
    );
  }

}