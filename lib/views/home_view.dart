import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/view_controller.dart';

class HomeView extends GetView<HomeViewController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final dependencyInj = Get.put(HomeViewController());

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GetBuilder<HomeViewController>(
                id: 'fun1',
                builder: (controller) {
                  print('text 1');
                  return Text(controller.count1.toString());
                },
              ),
              GetBuilder<HomeViewController>(
                id: 'fun1',
                builder: (controller) {
                  print('text 2');
                  return Text((controller.count2.toString()));
                },
              ),
              GetBuilder<HomeViewController>(
                id: 'fun3',
                builder: (controller) {
                  print('text 3');
                  return Text((controller.count3.toString()));
                },
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                  onPressed: controller.increasedCount1,
                  child: const Text('Update 1')),
              ElevatedButton(
                  onPressed: controller.increasedCount2,
                  child: const Text('Update 2')),
              ElevatedButton(
                  onPressed: controller.increasedCount3,
                  child: const Text('Update 3')),
            ],
          ),

          
        ],
      ),
    );
  }
}
