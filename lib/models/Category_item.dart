import 'package:flutter/material.dart';
import 'categories_meels_Screen.dart';

class Categoryitem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  Categoryitem(this.id, this.title, this.color);

  void selection(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      Categoriesmeels.routeName,
      arguments: {
        'id': id,
        'title': title,
      },
    );
    // MaterialPageRoute(
    //   builder: (_) {
    //     return Categoriesmeels(id, title);
    //   },
    // ),
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selection(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(
          title,
          style: ThemeData().textTheme.headline6,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.7),
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
