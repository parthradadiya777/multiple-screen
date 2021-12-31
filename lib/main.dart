import 'package:flutter/material.dart';
import 'package:multiple_sccreen/models/categories_meels_Screen.dart';
import './models/Categories_screen.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeal',
      theme: ThemeData(
          primarySwatch: Colors.orange,
          accentColor: Colors.amber,
          canvasColor: Color.fromRGBO(255, 254, 229, 1),
          textTheme: ThemeData.light().textTheme.copyWith(
              bodyText2: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              bodyText1: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              headline6: TextStyle(fontSize: 24, fontWeight: FontWeight.w500))),
    
      routes: {
        '/' : (ctx) => Catagoriescreen(),
        Categoriesmeels.routeName: (ctx) => Categoriesmeels(),
      },
    );
  }
}
