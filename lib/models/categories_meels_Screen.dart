import 'package:flutter/material.dart';

class Categoriesmeels extends StatelessWidget {
  static const routeName = '/category';
  // final String CategoryId;
  // final String CategorTitle;

  // Categoriesmeels(this.CategoryId, this.CategorTitle);
  @override
  Widget build(BuildContext context) {
    final routeArgu =
        ModalRoute.of(context).settings.arguments as Map<String, String>;

    // ignore: non_constant_identifier_names
    final CategorTitle = routeArgu['title'];

    return Scaffold(
      appBar: AppBar(title: Text(CategorTitle)),
      body: Center(
        child: Text('The Recipes For The Categories'),
      ),
    );
  }
}
