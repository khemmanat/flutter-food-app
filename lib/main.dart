import 'package:flutter/material.dart';
import 'package:flutterfoodappbase/screens/screens.dart';
import 'package:flutterfoodappbase/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // To Hide the DebuggerMode
      debugShowCheckedModeBanner: false,
      title: 'Flutter Food App',
      theme: buildThemeData(),
      home: const HomeScreen(),
    );
  }
}
