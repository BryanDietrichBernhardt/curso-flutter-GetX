import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/app/about/about_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("About"),
          onPressed: () => Get.toNamed(
            '/about',
            arguments: ['Argumento 1 por rota', 'Argumento 2 por rota'],
          ),
        ),
      ),
    );
  }
}

// class Controller extends GetxController {
//   static Controller get to => Get.find();

//   String title = 'GetX App';
//   int value = 0;

//   void incrementValue() {
//     value++;
//     update();
//   }
// }

// class HomePage extends StatelessWidget {
//   final controller = Get.put(Controller());

//   HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GetBuilder<Controller>(
//       init: Controller(),
//       builder: (_) {
//         return Scaffold(
//           appBar: AppBar(
//             title: Text(controller.title),
//           ),
//           body: Center(
//             child: GestureDetector(
//               onTap: () => controller.incrementValue(),
//               child: Text(
//                 controller.value.toString(),
//                 style: const TextStyle(
//                   fontSize: 30,
//                 ),
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
