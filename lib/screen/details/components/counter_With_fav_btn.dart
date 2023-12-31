import 'package:flutter/material.dart';

import 'cart_counter.dart';
class CounterWithFavBtn extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CartCounter(),
        Container(
          padding: EdgeInsets.all(4),
          height: 32,
          width: 32,
          decoration: BoxDecoration(
            color: Color(0xFFFF6464),
            shape: BoxShape.circle,
          ),
          child: Icon(Icons.star,color: Colors.white,),
        )
      ],
    );
  }


}