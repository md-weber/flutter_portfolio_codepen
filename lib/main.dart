import 'package:flutter/material.dart';
import 'package:flutterportfoliocodepen/portfolio_theme.dart';
import 'package:flutterportfoliocodepen/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Codepen Portfolio',
      debugShowCheckedModeBanner: false,
      theme: PortfolioTheme.light,
      home: HomeScreen(),
    );
  }
}

