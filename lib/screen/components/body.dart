import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:women/bage.dart';
import 'package:women/models/Product.dart';
import 'package:women/screen/constants.dart';
import 'package:women/screen/details/details_screen.dart';

import 'categorries.dart';
import 'item_card.dart';
class Body extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return Scaffold(
     body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child:Padding(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPaddin),
    child:GridView.builder(itemCount: products.length,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
      childAspectRatio: 0.75,
    ),
    itemBuilder : (context,index)=> ItemCard(product: products[index], ontap: () {
      Get.to(DetailsScreen( product:products[index], key: null,));
    }


    ),
    ),
    ),
        ),
      ],
    ));
  }
}
