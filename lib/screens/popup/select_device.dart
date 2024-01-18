import 'package:flutter/material.dart';

class SelectDevicePage extends StatelessWidget {
  const SelectDevicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Device'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 0, 35, 60),
      ),
    );
  }
}
