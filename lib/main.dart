import 'package:flutter/material.dart';
import 'package:profile/widgets/bottomNavigation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Applicaton',
      debugShowCheckedModeBanner: false,
      home: CustomBottomNav(),
    );
  }
}
