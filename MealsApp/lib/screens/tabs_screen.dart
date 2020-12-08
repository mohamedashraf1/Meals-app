import 'package:flutter/material.dart';

import './categories_screens.dart';
import './favorites_screen.dart';

class TabsSreen extends StatefulWidget {
  @override
  _TabsSreenState createState() => _TabsSreenState();
}

class _TabsSreenState extends State<TabsSreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      //initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Meals"),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.category),
                text: 'Categories',
              ),
              Tab(
                icon: Icon(Icons.star),
                text: 'Favorites',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            CategoriesScreen(),
            FavoriteScreen(),
          ],
        ),
      ),
      length: 2,
    );
  }
}
