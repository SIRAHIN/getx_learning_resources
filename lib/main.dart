import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:getx_practice/app/modules/profile%20Screen/binding/profile_view_bindings.dart';
import 'package:getx_practice/app/modules/profile%20Screen/view/profile_view.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX Practice ',
      home:  const ProfileView(),
      initialBinding: ProfileViewBindings(),
    );
  }
}