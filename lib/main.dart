import 'package:flutter/material.dart';
import 'package:pulse_nativ/preloader.dart';

void main() {
  runApp(const MyApp());
  print("start");
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pulse Group',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Preloader(),
    );
  }
}
