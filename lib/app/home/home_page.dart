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
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Controller>(
      init: Controller(),
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: Text(Get.find<Controller>().title),
          ),
          body: Center(
            child: GestureDetector(
              onTap: () => Get.find<Controller>().incrementValue(),
              child: Text(
                Get.find<Controller>().value.toString(),
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
