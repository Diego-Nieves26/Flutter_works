import 'package:flutter/material.dart';

import 'first_page.dart';
import 's4_work/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark(useMaterial3: true).copyWith(
          splashColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          primaryColor: Colors.black,
          scaffoldBackgroundColor: Colors.black),
      home: const FirstPageWidget(),
    );
  }
}
