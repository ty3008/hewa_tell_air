import 'package:flutter/material.dart';

class RegisterDevicePage extends StatelessWidget {
  const RegisterDevicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register Device'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 0, 35, 60),
      ),
    );
  }
}
