
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     home: HomeScreen(),
//   ));
// }

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   int _selectedIndex = 0;

//   final List<Widget> _screens = [
//     const GroceryHome(),
//     const CategoriesScreen(),
//     const ProfileScreen(),
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _screens[_selectedIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _selectedIndex,
//         selectedItemColor: Colors.green,
//         unselectedItemColor: Colors.grey,
//         onTap: _onItemTapped,
//         items: const [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//           BottomNavigationBarItem(icon: Icon(Icons.category), label: 'Categories'),
//           BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
//         ],
//       ),
//     );
//   }
// }

// class GroceryHome extends StatelessWidget {
//   const GroceryHome({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.green[50],
//       appBar: AppBar(
//         backgroundColor: const Color.fromARGB(255, 3, 99, 3),
//         elevation: 0,
//         title: const Text(
//           'Grocery App',
//           style: TextStyle(fontWeight: FontWeight.bold),
//         ),
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.shopping_cart),
//             onPressed: () {},
//           ),
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const Text(
//               'Welcome!',
//               style: TextStyle(
//                 fontSize: 28,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black,
//               ),
//             ),
//             const SizedBox(height: 8),
//             Text(
//               'Find your daily groceries below',
//               style: TextStyle(
//                 fontSize: 16,
//                 color: Colors.green[700],
//               ),
//             ),
//             const SizedBox(height: 24),
//             TextField(
//               decoration: InputDecoration(
//                 hintText: 'Search groceries...',
//                 prefixIcon: const Icon(Icons.search),
//                 filled: true,
//                 fillColor: Colors.white,
//                 contentPadding:
//                     const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(16),
//                   borderSide: BorderSide.none,
//                 ),
//               ),
//             ),
//             const SizedBox(height: 24),
//             Expanded(
//               child: GridView.count(
//                 crossAxisCount: 2,
//                 crossAxisSpacing: 16,
//                 mainAxisSpacing: 16,
//                 children: List.generate(6, (index) {
//                   final items = [
//                     {'name': 'Apples', 'image': '🍎', 'price': '\$2.99/kg'},
//                     {'name': 'Bananas', 'image': '🍌', 'price': '\$1.99/kg'},
//                     {'name': 'Carrots', 'image': '🥕', 'price': '\$5.49/kg'},
//                     {'name': 'Tomatoes', 'image': '🍅', 'price': '\$2.49/kg'},
//                     {'name': 'Broccoli', 'image': '🥦', 'price': '\$2.99/kg'},
//                     {'name': 'Milk', 'image': '🥛', 'price': '\$0.99/L'},
//                   ];
//                   return GroceryCard(
//                     name: items[index]['name']!,
//                     image: items[index]['image']!,
//                     price: items[index]['price']!,
//                   );
//                 }),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class GroceryCard extends StatelessWidget {
//   final String name;
//   final String image;
//   final String price;

//   const GroceryCard({
//     required this.name,
//     required this.image,
//     required this.price,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 2,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
//       child: Padding(
//         padding: const EdgeInsets.all(12.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               image,
//               style: const TextStyle(fontSize: 40),
//             ),
//             const SizedBox(height: 8),
//             Text(
//               name,
//               style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
//             ),
//             const SizedBox(height: 4),
//             Text(
//               price,
//               style: TextStyle(color: Colors.green[700]),
//             ),
//             const SizedBox(height: 8),
//             ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: const Color.fromARGB(255, 186, 229, 188),
//                 minimumSize: const Size(double.infinity, 36),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(8),
//                 ),
//               ),
//               onPressed: () {},
//               child: const Text('Add'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// // Dummy Categories Screen
// class CategoriesScreen extends StatelessWidget {
//   const CategoriesScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       body: Center(child: Text('Categories Page')),
//     );
//   }
// }

// // Profile Screen
// class ProfileScreen extends StatelessWidget {
//   const ProfileScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Profile'),
//         backgroundColor: Colors.green,
//       ),
//       body: const Center(
//         child: Text(
//           'User Profile Page',
//           style: TextStyle(fontSize: 24),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const GroceryHome(),
    const Center(child: Text("Categories Page")), // placeholder
    const ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.category), label: 'Categories'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}

class GroceryHome extends StatelessWidget {
  const GroceryHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 3, 99, 3),
        elevation: 0,
        title: const Text('Grocery App', style: TextStyle(fontWeight: FontWeight.bold)),
        actions: [
          IconButton(icon: const Icon(Icons.shopping_cart), onPressed: () {}),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Welcome!', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Text(
              'Find your daily groceries below',
              style: TextStyle(fontSize: 16, color: Colors.green[700]),
            ),
            const SizedBox(height: 24),
            TextField(
              decoration: InputDecoration(
                hintText: 'Search groceries...',
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.white,
                contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 24),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                children: List.generate(6, (index) {
                  final items = [
                    {'name': 'Apples', 'image': '🍎', 'price': '\$2.99/kg'},
                    {'name': 'Bananas', 'image': '🍌', 'price': '\$1.99/kg'},
                    {'name': 'Carrots', 'image': '🥕', 'price': '\$5.49/kg'},
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
    super.key,
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
            Text(image, style: const TextStyle(fontSize: 40)),
            const SizedBox(height: 8),
            Text(name, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            const SizedBox(height: 4),
            Text(price, style: TextStyle(color: const Color.fromARGB(255, 36, 107, 39))),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 35, 111, 39),
                minimumSize: const Size(double.infinity, 36),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              ),
              child: const Text('Add'),
            ),
          ],
        ),
      ),
    );
  }
}
