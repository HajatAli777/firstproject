import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
        title: Text(
          'Grocery App',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome!',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.green[900],
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Find your daily groceries below',
              style: TextStyle(
                fontSize: 16,
                color: Colors.green[700],
              ),
            ),
            SizedBox(height: 24),
            TextField(
              decoration: InputDecoration(
                hintText: 'Search groceries...',
                prefixIcon: Icon(Icons.search),
                filled: true,
                fillColor: Colors.white,
                contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 24),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                children: List.generate(6, (index) {
                  final items = [
                    {'name': 'Apples', 'image': '🍎', 'price': '\$2.99/kg'},
                    {'name': 'Bananas', 'image': '🍌', 'price': '\$1.99/kg'},
                    {'name': 'Carrots', 'image': '🥕', 'price': '\$1.49/kg'},
                    {'name': 'Tomatoes', 'image': '🍅', 'price': '\$2.49/kg'},
                    {'name': 'Broccoli', 'image': '🥦', 'price': '\$2.99/kg'},
                    {'name': 'Milk', 'image': '🥛', 'price': '\$0.99/L'},
                  ];
                  return GroceryCard(
                    name: items[index]['name']!,
                    image: items[index]['image']!,
                    price: items[index]['price']!,
                  );
                }),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.category), label: 'Categories'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}

class GroceryCard extends StatelessWidget {
  final String name;
  final String image;
  final String price;

  const GroceryCard({
    required this.name,
    required this.image,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              image,
              style: TextStyle(fontSize: 40),
            ),
            SizedBox(height: 8),
            Text(
              name,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(height: 4),
            Text(
              price,
              style: TextStyle(color: Colors.green[700]),
            ),
            SizedBox(height: 8),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                minimumSize: Size(double.infinity, 36),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: () {},
              child: Text('Add'),
            ),
          ],
        ),
      ),
    );
  }
}