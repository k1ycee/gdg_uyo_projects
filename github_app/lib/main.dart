import 'package:flutter/material.dart';
import 'package:github_app/view/homescreen.dart';
import 'package:github_app/view_model/home_screen_view_model.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: ChangeNotifierProvider(
        create: (context) => GetUser(),
        child: HomeScreen(),
      ),
    );
  }
}

