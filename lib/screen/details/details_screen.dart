import 'package:flutter/material.dart';
import 'package:women/models/Product.dart';
import 'package:women/screen/components/body.dart';
import 'package:women/screen/details/components/body.dart';
class DetailsScreen extends StatelessWidget{
  final Product product;
  const DetailsScreen({ Key ? key ,required this.product}):super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
    backgroundColor:product.color,
      appBar:buildAppBar(context),
      body: aya(product: product,),
    );
  }

    AppBar buildAppBar(BuildContext context)  {
     return AppBar(
        backgroundColor: product.color,
        elevation:0,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart_outlined)),
        ],
      );
  }}