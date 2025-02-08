import 'package:flutter/material.dart';

class Edu extends StatelessWidget {
  const Edu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Education"),
      ),
      body: Center(child: Text("CSE"),),
    );
  }
}