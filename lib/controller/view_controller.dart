import 'package:get/get.dart';

class HomeViewController extends GetxController {


int count1 = 0;
int count2 =0;
int count3 = 0;

 void increasedCount1(){
  count1++;
  // update is specified to the perticular getbuilder id//
  update(['fun1']);
 }

  void increasedCount2(){
  count2++;
   // update is specified to the perticular getbuilder id //
  update(['fun2']);
 }

  void increasedCount3(){
  count3++;
   // update is specified to the perticular getbuilder id//
  update(['fun3']);
 }

}