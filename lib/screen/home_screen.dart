import 'package:flutter/material.dart';
import 'package:pay/pay.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // backgroundColor: Colors.red,
      body: Center(
        child: Text('Hello World!',
            style: TextStyle(fontSize: 24, color: Colors.red)),
      ),
    );
  }
}
