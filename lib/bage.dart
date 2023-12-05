import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:women/screen/components/body.dart';
import 'package:women/screen/home_screen.dart';
class bags extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Body(),
      bottomNavigationBar:BottomAppBar(
        notchMargin: 5.0,
        shape: CircularNotchedRectangle(),
        color: Colors.blue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(padding: EdgeInsets.only(left: 10.0),
              child: Column(

                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(icon: Icon(Icons.telegram,color: Colors.white), onPressed: () {  },),
                  Text("تواصل",style: TextStyle(color: Colors.black),)
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(right: 40.0,),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(icon: Icon(Icons.dashboard_rounded,color: Colors.white), onPressed: () {  },),
                  Text("الطلبات",style: TextStyle(color: Colors.black),)
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(left: 40.0 ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(icon: Icon(Icons.shopping_cart,color: Colors.white), onPressed: () {  },),
                  Text("السلة",style: TextStyle(color: Colors.black),)
                ],
              ),),
            Padding(padding: EdgeInsets.only(left: 10.0,right: 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(icon: Icon(Icons.favorite,color: Colors.white), onPressed: () {  },),
                  Text("المفضلة",style: TextStyle(color: Colors.black),)
                ],
              ),),

          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Get.to(HomeScreen());
        },
        child: Icon(Icons.home,size: 40,),
        foregroundColor: Colors.white,
      ),
    );
  }

}