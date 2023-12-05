import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
class DrawerApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child:Column(
      children: [
        UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(backgroundColor: Colors.white,child:Icon(Icons.person,size: 40,)),
            accountName: Text("Aya",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            accountEmail: Text("Aya@gmail.com",style: TextStyle(fontSize: 18,),)),


        ListTile(
          title: Text("الاتصال بالشركة",style: TextStyle(fontSize: 18),),
          leading: Icon(Icons.phone,color: Colors.blue,),
        ),
        ListTile(
          title: Text("شارك و اربح",style: TextStyle(fontSize: 18),),
          leading: Icon(Icons.share,color: Colors.blue),
        ),
        ListTile(
          title: Text("الملف الشخضي ",style: TextStyle(fontSize: 18),),
          leading: Icon(Icons.person,color: Colors.blue),
        ),
        ListTile(
          title: Text("سياسة الاستخدام ",style: TextStyle(fontSize: 18),),
          leading: Icon(Icons.person_search,color: Colors.blue),
        ),
        ListTile(
          title: Text("عناوين الاستلام",style: TextStyle(fontSize: 18),),
          leading: Icon(Icons.location_on,color: Colors.blue),
        ),

        ListTile(
          title: Text("حذف حسابي",style: TextStyle(fontSize: 18),),
          leading: Icon(Icons.person_remove_outlined,color: Colors.red,),
        ),
        ListTile(
          title: Text("تسجيل خروح",style: TextStyle(fontSize: 18),),
          leading: Icon(Icons.output,color: Colors.red,),
        ),
      ],
    ));
  }

}