import 'package:flutter/material.dart';
import 'package:women/models/Product.dart';
import 'package:women/screen/constants.dart';

import '../../components/color_and_size.dart';
import '../../components/product_title_with_image.dart';
import 'add_to_cart.dart';
import 'cart_counter.dart';
import 'counter_With_fav_btn.dart';
import 'description.dart';
class aya extends StatelessWidget{
  final Product product;
   const aya({Key ? key ,required this.product}):super(key: key);

  Widget build(BuildContext context){
     Size size=MediaQuery.of(context).size;
    return SingleChildScrollView(
    child:  Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children:<Widget> [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(top: size.height*0.12,
                  left: kDefaultPaddin,
                    right: kDefaultPaddin,
                  ),

                  // height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft:Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
    child: Column(
    children: [
      ColorAndSize(product: product),
      SizedBox(height: kDefaultPaddin /2,),
      Description(product: product),
      SizedBox(height: kDefaultPaddin /2,),
      CounterWithFavBtn(),
      SizedBox(height: kDefaultPaddin /2,),
      AddToCart(product:product),
                  ],
    ),),
    ProductTitleWithImage(product: product)],),)],),);

  }
}
