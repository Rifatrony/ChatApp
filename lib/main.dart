import 'package:chatapp/screen/HomeScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Chat App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "OpenSans",
        primaryColor: const Color(0XFF075E54), colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.teal).copyWith(secondary: const Color(0XFF128C7E)),
      ),
      home: const HomeScreen(),
    );
  }
}
