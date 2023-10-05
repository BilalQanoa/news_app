import 'package:flutter/material.dart';
import 'package:news_app/featuers/home/presentation/home_view.dart';

void main() {
  runApp(NewsApp());
}

class NewsApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}

