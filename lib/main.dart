import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task2/screens/home_screen.dart';
import 'package:task2/screens/product_sreen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
  );
  runApp(const Task2());
}

class Task2 extends StatelessWidget {
  const Task2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => const HomeScreen(),
        "/productscreen": (context) => ProductScreen()
      },
    );
  }
}
