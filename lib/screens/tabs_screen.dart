import 'package:flutter/material.dart';
import 'categories_screen.dart';
import 'favorite_screen.dart';

class TabsScreen extends StatelessWidget {
  const TabsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Vamos cozinhar?'),
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.category),
                text: 'Categoria',
              ),
              Tab(
                icon: Icon(Icons.star),
                text: 'Favoritos',
              )
            ],
          ),
        ),
        body:
            const TabBarView(children: [CategoriesScreen(), FavoriteScreen()]),
      ),
    );
  }
}
