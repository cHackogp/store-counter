import 'package:flutter/material.dart';
import 'package:store_counter/ui/home/home_page.dart';

class StoreCounterApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Store Counter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(
          title: 'Store Counter'), // ui/home/home_page.dart/class MyHomePage
    );
  }
}
