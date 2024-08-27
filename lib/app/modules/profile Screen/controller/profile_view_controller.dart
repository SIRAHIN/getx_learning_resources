import 'package:get/get.dart';
import 'package:getx_practice/app/data/constants/api_urls.dart';
import 'package:getx_practice/app/data/models/Profile%20Model/profile_model.dart';
import 'package:getx_practice/app/data/models/Respone%20Model/response_model.dart';
import 'package:getx_practice/app/services/network_caller.dart';

class ProfileViewController extends GetxController {
  RxBool _isLoading = false.obs;
  RxBool get isLoading => _isLoading;

  RxString _errorMessage = ''.obs;
  RxString get errorMessage => _errorMessage;

  //Model Class for User Profile Data
  ProfileModel? _profileModel;

  ProfileModel get profileModel => _profileModel ?? ProfileModel();

  @override
  onInit() async {
    super.onInit();
    await fetchUserProfileData();
  }

  Future<bool> fetchUserProfileData() async {
    try {
      _isLoading.value = true;
      ResponsedataModel response = await NetworkCaller().getRequest(apiUrl);
      if (response.statusCode == 200) {
        _profileModel = ProfileModel.fromJson(response.responseData);
        return true;
      } else {
        Get.snackbar('Error', _errorMessage.value);
        return false;
      }
    } catch (ex) {
      rethrow;
    } finally {
      _isLoading.value = false;
    }
  }
}
