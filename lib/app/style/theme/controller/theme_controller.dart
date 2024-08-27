import 'package:get/get.dart';
import 'package:getx_practice/app/style/theme/app_theme.dart';

class ThemeController extends GetxController{
 
 RxBool isDarkTheme = false.obs;

 onChnageAppTheme (bool isToggledTheme){
   Get.changeTheme(isDarkTheme.value ? lightTheme : darkTheme);
   isDarkTheme.value = isToggledTheme;
 }

}