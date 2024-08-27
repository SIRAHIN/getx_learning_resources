import 'package:get/get.dart';
import 'package:getx_practice/app/modules/profile%20Screen/controller/profile_view_controller.dart';

class ProfileViewBindings extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => ProfileViewController(), fenix: true);
  }
 
}