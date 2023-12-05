import 'package:get/get.dart';

class CountController extends GetxController{
  RxInt Counter=0.obs;

  void addcounter() {
    Counter++;
  }
  void subcounter(){
    Counter--;
  }
}