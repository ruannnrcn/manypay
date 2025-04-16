import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:manypay/config.dart';
import 'pages/home_page.dart';
import 'package:manypay/widgets/checkauth.dart';

void main() async {
  await initConfigurations();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ManyPay',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(), // CheckAuth widget to determine the initial page
    );
  }
}
