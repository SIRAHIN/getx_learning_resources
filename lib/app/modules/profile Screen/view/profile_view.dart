import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/app/modules/profile%20Screen/controller/profile_view_controller.dart';
import 'package:getx_practice/app/style/theme/controller/theme_controller.dart';

class ProfileView extends GetView<ProfileViewController> {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Refersh New Data'),
        actions: [
          Obx(
            () => Switch(
              value: Get.find<ThemeController>().isDarkTheme.value,
              onChanged: (value) {
                Get.find<ThemeController>().onChnageAppTheme(value);
              },
            ),
          )
        ],
      ),
      body: Obx(
        () {
          if (controller.isLoading.value) {
            // Show loading indicator if data is being fetched
            return const Center(child: CircularProgressIndicator());
          }

          // Show the list of profiles if data is not loading
          return RefreshIndicator(
            onRefresh: () async {
              await controller.fetchUserProfileData();
            },
            child: ListView.builder(
              itemCount: controller.profileModel.profilesData?.length ?? 0,
              shrinkWrap: true,
              primary: true,
              itemBuilder: (context, index) {
                var profileData = controller.profileModel.profilesData![index];
                return ListTile(
                  title: Text(profileData.name ?? ''),
                  subtitle: Text(profileData.email ?? ''),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
