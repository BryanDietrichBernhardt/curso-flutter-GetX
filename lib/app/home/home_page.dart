import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Controller extends GetxController {
  static Controller get to => Get.find();

  String title = 'GetX App';
  int value = 0;

  void incrementValue() {
    value++;
    update();
  }
}

class HomePage extends StatelessWidget {
  final controller = Get.put(Controller());

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Controller>(
      init: Controller(),
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: Text(controller.title),
          ),
          body: Center(
            child: GestureDetector(
              onTap: () => controller.incrementValue(),
              child: Text(
                controller.value.toString(),
                style: const TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
