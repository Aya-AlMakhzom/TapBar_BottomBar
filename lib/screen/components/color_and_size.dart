import 'package:flutter/material.dart';
import 'package:women/models/Product.dart';

import '../constants.dart';
class ColorAndSize extends StatelessWidget {
  const ColorAndSize({required this.product});
  final Product product;

  @override
  Widget build(BuildContext context) {
    return  Row(
      children:[
    Expanded(child:
    Column(
    crossAxisAlignment:CrossAxisAlignment.start,
      children: [
        Text("Color"),
        Row(
          children: [
            ColorDot(color:Color(0xff356c95), isSelected: true,),

            ColorDot(color:Color(0xFFF8C078), isSelected: false,),

            ColorDot(color:Color(0xFFA29B9B), isSelected: false,),

          ],
        ),

      ],
    ),),
    Expanded(
    child: RichText(text:TextSpan(
    style: TextStyle(color: kTextColor),
    children: [
    TextSpan( text: "Size\n"),
    TextSpan(
    text: "${product.size} cm",
    style: Theme.of(context).textTheme.headlineLarge?.copyWith(fontWeight:FontWeight.bold))
    ]
    )),),]);
  }
}
class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;

  const ColorDot({required this.color, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: kDefaultPaddin / 4,
        right: kDefaultPaddin / 2,
      ),
      padding: EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? color : Colors.transparent,
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }

}
