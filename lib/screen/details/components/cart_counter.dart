import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:women/screen/controller/countcontroller.dart';

import '../../constants.dart';

class CartCounter extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return GetX<CountController>(
    init: CountController(),
        builder: (controller)=>Row(
      children: [
        bulidOutlineButton(
            icon: Icons.remove,
            press: () {
              if (controller.Counter > 1) {
    controller.subcounter();
              }
            }
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPaddin / 2),
          child:Text(
    controller.Counter.toString().padLeft(2,"0") ,style: Theme.of(context).textTheme.headlineLarge,
          ),),
        bulidOutlineButton(icon: Icons.add,press: (){
    controller.addcounter();
        })
      ],
    ));
  }
  SizedBox bulidOutlineButton({required IconData icon, required Function() press}){
    return SizedBox(
        width: 40,
        height: 32,
        child:OutlinedButton(
          onPressed:press, child: Icon(icon),
        ),
    );
  }
}






