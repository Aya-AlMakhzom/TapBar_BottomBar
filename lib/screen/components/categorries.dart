import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:women/Drawer.dart';
import 'package:women/accessories.dart';
import 'package:women/bage.dart';
import 'package:women/garment.dart';
import 'package:women/perfume.dart';
import 'package:women/screen/home_screen.dart';
import 'package:women/shoes.dart';
import '../constants.dart';

class MyTapBar extends StatelessWidget {
  const MyTapBar({super.key});

  @override
  Widget build(BuildContext context) {
    final MyTapBar1 tabs=Get.put(MyTapBar1());
    return Scaffold(
      drawer: DrawerApp(),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search, color: Colors.white,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications_outlined,color:Colors.white,)),
          SizedBox(width: kDefaultPaddin/2),
        ],

        bottom:TabBar(
          controller: tabs.controller,
          isScrollable: true,
          tabs:tabs.myTabs,

        ),
      ),
    body: TabBarView(
    controller: tabs.controller,
    //استدعاء لفتح كل صفحة من tapBar
    children: [
      HomeScreen(),
      bags(),
      shoes(),
      perfume(),
      accessories(),
      garment(),
    ],
    ),




    );

  }
}


class MyTapBar1 extends GetxController with SingleGetTickerProviderMixin{
  late TabController controller;
  late ScrollController scrollController;

  @override
  void onInit(){
    controller=TabController(length:6, vsync: this);
    scrollController=ScrollController();
    super.onInit();
  }
  @override
  void onClose() {
    controller.dispose();
    scrollController.dispose();
    super.onClose();

  }
  final List<Tab> myTabs =<Tab>[
    Tab(
      text: "الواجهة الرئسية",
    ),
    Tab(
      text: "الحقائب",
    ),

    Tab(
      text: " الاحذية",
    ),

    Tab(
      text: "عطورات ",
    ),
    Tab(
      text: " اكسسوارات",
    ),
    Tab(
      text: "ملابس" ,
    ),

  ];

}