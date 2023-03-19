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
        child: ElevatedButton(
          child: const Text("Home"),
          onPressed: () => Get.back(),
        ),
      ),
    );
  }
}
