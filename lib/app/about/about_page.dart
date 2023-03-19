import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text("Home"),
              onPressed: () => Get.back(),
            ),
            Text(
                "Argumento vindo por rota de home:\n ${Get.arguments[0]}\n${Get.arguments[1]}",
                textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}
