import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:randon_user_api/controllers/my_home_page_controller.dart';

class MyHomePage extends GetView<MyHomePageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Randon User Api"),
      ),
      body: Obx(
        () => ListView.builder(
          itemCount: controller.randomUserData.value.results?.length,
          itemBuilder: (context, index) => ListTile(
            title:
                Text("${controller.randomUserData.value.results?[index].name}"),
            subtitle: Text(
                "${controller.randomUserData.value.results?[index].email}"),
          ),
        ),
      ),
    );
  }
}
