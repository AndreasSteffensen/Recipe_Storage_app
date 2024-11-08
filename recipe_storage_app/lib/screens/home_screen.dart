import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipe App'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Welcome to the Recipe App!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                // Placeholder for future recipe cards
                //_buildRecipeCard('Spaghetti Bolognese', 'assets/spaghetti.jpg'),
                //_buildRecipeCard('Chicken Curry', 'assets/chicken_curry.jpg'),
                //_buildRecipeCard('Vegetable Stir Fry', 'assets/stir_fry.jpg'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRecipeCard(String title, String imagePath) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(imagePath, fit: BoxFit.cover),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
