import 'package:flutter/material.dart';
import 'package:store/screens/home_page.dart';

void main() {
  runApp(const StroeApp());
}

class StroeApp extends StatelessWidget {
  const StroeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomePage.id: (context) => const HomePage(),
      },
      initialRoute: HomePage.id,
    );
  }
}
