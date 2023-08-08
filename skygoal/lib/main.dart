import 'package:flutter/material.dart';
import 'package:skygoal/page/college_desc.dart';
import 'package:skygoal/page/college_page1.dart';
import 'package:skygoal/page/home_page.dart';
import 'package:skygoal/page/hostel_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}
